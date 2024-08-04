import 'package:flutter/material.dart';

class AddMusicDetails {
  BuildContext context;

  AddMusicDetails({required this.context});

  Widget fieldView(TextEditingController controller, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          filled: true,
          fillColor: Colors.grey[200],
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.grey[200]!),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),


        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "$text is required!";
          } else {
            return null;
          }
        },
      ),
    );
  }


}
