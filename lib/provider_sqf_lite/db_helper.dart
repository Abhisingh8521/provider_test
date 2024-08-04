import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'mode.dart';
import 'dart:io' as io;



class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDataBase();
    return _db;
  }


  Future<Database> initDataBase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    // String path = join(documentDirectory.path, 'note.db');
    String path = "${documentDirectory.path}note.dp";

    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
  CREATE TABLE notes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    address TEXT NOT NULL
);

  ''');
  }

  Future<List<DataModel>> getNoteList() async {
    var dbClient = await db;
    final List<Map<String, dynamic>> queryResult = await dbClient!.query(
        'notes');

    return queryResult.map((e) => DataModel.fromMap(e)).toList();
  }



  Future<void> delete(int id) async {
    var dbClient = await db;
    await dbClient!.delete(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> insertData(DataModel dataModel) async {
    var dbClient = await db;

    await dbClient!.insert('notes', dataModel.toJson());
  }


  Future<int> updateData(DataModel updatedData) async {
    var dbClient = await db;
    return await dbClient!.update(
        'notes',
        updatedData.toJson(),
        where: 'id =?',
        whereArgs: [updatedData.id]
    );
  }


}
