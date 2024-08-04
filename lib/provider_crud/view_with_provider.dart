// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_test/provider_crud/provider.dart';
//
// import 'add_with_provider.dart';
// import 'mode.dart';
//
// class DataListScreen extends StatelessWidget {
//   const DataListScreen({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => AddDataProvider()),
//           );
//         },
//         child: const Icon(Icons.add),
//       ),
//       appBar: AppBar(
//         title: const Text('Data List'),
//       ),
//       body: Consumer<TestProvider>(
//         builder: (context, provider, child) {
//           List<ProvoderDataModel> dataList = provider.dataList;
//
//           return ListView.builder(
//             itemCount: dataList.length,
//             itemBuilder: (context, index) {
//               ProvoderDataModel data = dataList[index];
//               return ListTile(
//                 title: Text('First Name: ${data.firstName}'),
//                 subtitle: Text('Last Name: ${data.lastName}'),
//                 trailing: Row(
//
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.edit),
//                       onPressed: () {
//                         _showUpdateBottomSheet(context, data, index);
//                       },
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.delete),
//                       onPressed: () {
//                         Provider.of<TestProvider>(context, listen: false).deleteData(index);
//                       },
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
//
//   void _showUpdateBottomSheet(BuildContext context, ProvoderDataModel data, int index) {
//     TextEditingController firstNameController = TextEditingController(text: data.firstName);
//     TextEditingController lastNameController = TextEditingController(text: data.lastName);
//
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextFormField(
//                 controller: firstNameController,
//                 decoration: InputDecoration(labelText: 'First Name'),
//               ),
//               TextFormField(
//                 controller: lastNameController,
//                 decoration: InputDecoration(labelText: 'Last Name'
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Provider.of<TestProvider>(context, listen: false).updateData(
//                     index,
//                     firstNameController.text,
//                     lastNameController.text,
//                   );
//                   Navigator.pop(context);
//                 },
//                 child: Text('Update'),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
