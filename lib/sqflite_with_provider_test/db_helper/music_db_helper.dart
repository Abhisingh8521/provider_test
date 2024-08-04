
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../model/datamodel.dart';

mixin class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDataBase();
    return _db;
  }

  Future<Database> initDataBase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = "${documentDirectory.path}musics.db";

    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE musics (
      id INTEGER PRIMARY KEY,
      title TEXT NOT NULL,
      artists TEXT NOT NULL,
      producers TEXT NOT NULL,
      companies TEXT NOT NULL,
      release_date TEXT NOT NULL,
      is_favorite INTEGER NOT NULL
    )
  ''');
  }

  Future<List<MusicModel>> getNoteList() async {
    var dbClient = await db;
    final List<Map<String, dynamic>> queryResult =
    await dbClient!.query('musics');
    return queryResult.map((e) => MusicModel.fromJson(e)).toList();
  }

  Future<void> delete(int id) async {
    var dbClient = await db;
    await dbClient!.delete(
      'musics',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> insertData(MusicModel dataModel) async {
    var dbClient = await db;

    await dbClient!.insert('musics', dataModel.toJson());
  }

  Future<int> updateData1(MusicModel updatedData) async {
    var dbClient = await db;
    return await dbClient!.update('musics', updatedData.toJson(),
        where: 'id =?', whereArgs: [updatedData.id]);
  }


  Future<int> updateData(int id, String title, String producer, String companyDetails) async {
    var dbClient = await db;
    return await dbClient!.update(
      'musics',
      {
        'title': title,
        'producer': producer,
        'companyDetails': companyDetails,
      },
      where: 'id =?',
      whereArgs: [id],
    );
  }
}
