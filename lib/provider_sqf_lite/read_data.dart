// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_test/provider_sqf_lite/add_data.dart';
// import 'package:provider_test/provider_sqf_lite/provider.dart';
//
// import 'mode.dart';
//
// class DataListWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => AddData(),));
//         },
//         child: Icon(Icons.add),
//       ),
//       appBar: AppBar(
//         title: Text('Data List'),
//       ),
//       body: Consumer<DataProvider>(
//         builder: (context, dataProvider, _) {
//           if (dataProvider.dataList.isEmpty) {
//             return const Center(
//               child: Text('No data available'),
//             );
//           }
//
//           return ListView.builder(
//             itemCount: dataProvider.dataList.length,
//             itemBuilder: (context, index) {
//               DataModel data = dataProvider.dataList[index];
//               return Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey, // Border color
//                     width: 1.0, // Border width
//                   ),
//                   borderRadius: BorderRadius.circular(8.0), // Border radius
//                 ),
//                 margin: EdgeInsets.all(8.0), // Margin around the container
//                 padding: EdgeInsets.all(8.0), // Padding inside the container
//                 child: ListTile(
//                   title: Text(data.name),
//                   subtitle: Text(data.address),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       dataProvider.deleteData(data.id);
//                     },
//                   ),
//                 ),
//               );
//
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
//
