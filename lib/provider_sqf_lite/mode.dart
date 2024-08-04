// import 'dart:convert';
//
// DataModel dataModelFromJson(String str) => DataModel.fromMap(json.decode(str));
//
// String dataModelToJson(DataModel data) => json.encode(data.toJson());
//
// class DataModel {
//   int? id;
//   String name;
//   String address;
//
//
//   DataModel({
//     this.id,
//     required this.name,
//     required this.address,
//
//   });
//
//   factory DataModel.fromMap(Map<String, dynamic> json) {
//     return DataModel(
//       id: json['id'] as int?,
//       name: json['name'] ?? '',
//       address: json['address'] ?? '',
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       "id": id,
//       "name": name,
//       "address": address,
//     };
//   }
// }
// //margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),