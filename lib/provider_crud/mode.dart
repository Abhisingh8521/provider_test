// // To parse this JSON data, do
// //
// //     final musicDataModel = musicDataModelFromJson(jsonString);
//
// import 'dart:convert';
//
// ProvoderDataModel musicDataModelFromJson(String str) =>
//     ProvoderDataModel.fromJson(json.decode(str));
//
// String musicDataModelToJson(ProvoderDataModel data) => json.encode(data.toJson());
//
// class ProvoderDataModel {
//   String firstName;
//   String lastName;
//
//   ProvoderDataModel({
//     required this.firstName,
//     required this.lastName,
//   });
//
//   factory ProvoderDataModel.fromJson(Map<String, dynamic> json) =>
//       ProvoderDataModel(
//         firstName: json["firstName"],
//         lastName: json["lastName"],
//       );
//
//   Map<String, dynamic> toJson() => {
//     "firstName": firstName,
//     "lastName": lastName,
//   };
// }
//
//
//
//
//
//
//
