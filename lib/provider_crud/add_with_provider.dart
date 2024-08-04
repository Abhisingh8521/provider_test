// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_test/provider_crud/provider.dart';
//
// class AddDataProvider extends StatelessWidget {
//   final TextEditingController _firstNameController = TextEditingController();
//   final TextEditingController _lastNameController =
//       TextEditingController();
//
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Add Data'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 const SizedBox(height: 50),
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
//                   controller: _lastNameController,
//                   decoration: const InputDecoration(
//                     hintText: 'Enter your Description',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     ),
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
//                       String firstName = _firstNameController.text;
//                       String lastName = _lastNameController.text;
//                       await Provider.of<TestProvider>(
//                         context,
//                         listen: false,
//                       ).addData(firstName, lastName);
//
//                       Navigator.pop(context);
//                       Fluttertoast.showToast(
//                         msg: 'Data added successfully',
//                         toastLength: Toast.LENGTH_SHORT,
//                         gravity: ToastGravity.BOTTOM,
//                         backgroundColor: Colors.deepPurple,
//                         textColor: Colors.white,
//                       );
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
