// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_test/sqflite_with_provider_test/provider/music_provider.dart';
// import 'package:provider_test/sqflite_with_provider_test/widgits_class/add_music_widgits.dart';
//
// import 'model/datamodel.dart';
//
//
// class UpdateDetails extends StatefulWidget {
//   final MusicDataModel userData;
//
//   const UpdateDetails({Key? key, required this.userData}) : super(key: key);
//
//   @override
//   State<UpdateDetails> createState() => _UpdateDetailsState();
// }
//
// class _UpdateDetailsState extends State<UpdateDetails> {
//   late TextEditingController titleController;
//   late TextEditingController producerController;
//   late TextEditingController companyDetailsController;
//
//   @override
//   void initState() {
//     super.initState();
//     titleController = TextEditingController(text: widget.userData.title);
//     producerController = TextEditingController(text: widget.userData.producer);
//     companyDetailsController =
//         TextEditingController(text: widget.userData.companyDetails);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var view = AddMusicDetails(context: context);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Update Details'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             view.fieldView(titleController, "title"),
//             view.fieldView(producerController, "Producer"),
//             view.fieldView(companyDetailsController, "Company Details"),
//             const SizedBox(height: 80.0),
//             ElevatedButton(
//               onPressed: () {
//                 Provider.of<DataProvider>(context, listen: false).updateMusic(
//                   widget.userData.id,
//                   titleController.text,
//                   producerController.text,
//                   companyDetailsController.text
//                 );
//                 Navigator.pop(context);
//               },
//               child: const Text('Update'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
