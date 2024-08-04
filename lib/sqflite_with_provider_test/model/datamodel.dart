import 'dart:convert';

MusicModel musicModelFromJson(String str) =>
    MusicModel.fromJson(json.decode(str));

String musicModelToJson(MusicModel data) => json.encode(data.toJson());

class MusicModel {
  String? title;
  String? company;
  String? artist;
  String? producer;
  int? isFavorite;
  int? id;
  String? releaseDate;

  MusicModel(
      {this.title,
        this.artist,
        this.producer,
        this.company,
        this.id,
        this.isFavorite,
        this.releaseDate});

  factory MusicModel.fromJson(Map<String, dynamic> json) => MusicModel(
      title: json["title"],
      artist: json["artists"],
      producer: json["producers"],
      company: json["companies"],
      id: json["id"],
      isFavorite: json['is_favorite'],
      releaseDate: json["release_date"]);

  Map<String, dynamic> toJson() => {
    "title": title,
    "artists": artist,
    "producers": producer,
    "companies": company,
    "id": id,
    "is_favorite": isFavorite,
    "release_date": releaseDate
  };

  List<MusicModel> get getMusics => [
    MusicModel(
        title: "title",
        artist: "artist",
        producer: "Producer",
        company: "company",
        isFavorite: 1),
    MusicModel(
        title: "title",
        artist: "artist",
        producer: "Producer",
        company: "company",
        isFavorite: 0),
    MusicModel(
        title: "title",
        artist: "artist",
        producer: "Producer",
        company: "company",
        isFavorite: 1),
    MusicModel(
        title: "title",
        artist: "artist",
        producer: "Producer",
        company: "company",
        isFavorite: 0)
  ];
}
