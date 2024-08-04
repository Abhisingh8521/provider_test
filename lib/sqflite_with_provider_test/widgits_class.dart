// import 'package:flutter/material.dart';
//
// class AddMusicDetails {
//   BuildContext context;
//
//   AddMusicDetails({required this.context});
//
//   Widget fieldView(TextEditingController controller, String text) {
//     return TextFormField(
//       controller: controller,
//       decoration: InputDecoration(
//         hintText: text,
//         border: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         filled: true,
//         fillColor: Colors.grey[200],
//         enabledBorder: OutlineInputBorder(
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//           borderSide: BorderSide(color: Colors.grey[200]!),
//         ),
//         focusedBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//           borderSide: BorderSide(color: Colors.blue),
//         ),
//
//
//       ),
//       validator: (String? text) {
//         if (text!.isEmpty) {
//           return "This is required!";
//         } else {
//           return null;
//         }
//       },
//     );
//   }
//
//
// }
