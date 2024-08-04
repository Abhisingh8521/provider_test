// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_test/provider_sqf_lite/provider.dart';
// import 'package:provider_test/provider_sqf_lite/widgits.dart'; // Assuming this is a correct path to widgets.dart
// import 'db_helper.dart';
//
// class AddData extends StatelessWidget {
//   final TextEditingController _firstNameController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();
//
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Data'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 SizedBox(height: 50),
//                 TextFormField(
//                   controller: _firstNameController,
//                   decoration: const InputDecoration(
//                     hintText: 'Enter your title',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a title';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   controller: _addressController,
//                   decoration: const InputDecoration(
//                     hintText: 'Enter your Description',
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a description';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 60),
//                 ElevatedButton(
//                   onPressed: () async {
//                     if (_formKey.currentState!.validate()) {
//                       String name = _firstNameController.text;
//                       String address = _addressController.text;
//                       await Provider.of<DataProvider>(
//                         context,
//                         listen: false,
//                       ).addData(name, address);
//
//                       Fluttertoast.showToast(
//                         msg: 'Data added successfully',
//                         toastLength: Toast.LENGTH_SHORT,
//                         gravity: ToastGravity.BOTTOM,
//                         backgroundColor: Colors.deepPurple,
//                         textColor: Colors.white,
//                       );
//
//                       Navigator.pop(context);
//                     }
//                   },
//                   child: const Text("Save data"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
