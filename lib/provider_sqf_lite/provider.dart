// import 'package:flutter/material.dart';
// import 'db_helper.dart';
//
// import 'mode.dart'; // Assuming 'DataModel' class is imported from 'data_model.dart'
//
// class DataProvider extends ChangeNotifier {
//   late DBHelper dbHelper;
//   List<DataModel> dataList = [];
//
//   DataProvider() {
//     dbHelper = DBHelper();
//     fetchData();
//   }
//
//   Future<void> fetchData() async {
//     dataList = await dbHelper.getNoteList();
//     notifyListeners();
//   }
//
//   Future<void> addData(String name, String address) async {
//     DataModel newData = DataModel(
//       name: name,
//       address: address,
//     );
//     await dbHelper.insertData(newData);
//     await fetchData();
//   }
//
//   Future<void> deleteData(int? id) async {
//
//       await dbHelper.delete(id!);
//       await fetchData();
//
//       print('ID is null, unable to delete.');
//
//   }
// }
