import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../db_helper/music_db_helper.dart';
import '../model/datamodel.dart';


class MusicProvider with ChangeNotifier,DBHelper {
  List<MusicModel> musics = [];

  addMusic(MusicModel music)async {
    await insertData(music);
    musics.add(music);
    notifyListeners();
  }

  updateMusic(int index, MusicModel music) async{
    await updateData1(music);
    musics[index] = music;
    notifyListeners();
  }

  getAllMusics()async{
    musics = await getNoteList();
    notifyListeners();
  }

  addIntoFavorite(MusicModel musicModel) async{
    musicModel.isFavorite = 1;
    await updateData1(musicModel);
    notifyListeners();
  }

  removeFromFavorite(MusicModel musicModel) async{
    musicModel.isFavorite = 0;
    await updateData1(musicModel);
    notifyListeners();
  }

  List<MusicModel> favoriteMusics = <MusicModel>[];

  List<MusicModel> getAllFavoriteMusic() {
    favoriteMusics =
        musics.where((element) => element.isFavorite == 1).toList();
    notifyListeners();
    return favoriteMusics;
  }

  Future<void> update(int id, String title, String producer, String companyDetails) async {
    MusicModel updatedMusic = MusicModel(
      id: id,
      title: title,
      producer: producer,
      company: companyDetails,
    );
    await updateData1(updatedMusic);
    int index = musics.indexWhere((music) => music.id == id);
    if (index != -1) {
      musics[index] = updatedMusic;
      notifyListeners();
    }
  }


}
