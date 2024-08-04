import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMusicWidget {
  BuildContext context;

  AddMusicWidget({required this.context});

  Widget fieldview(TextEditingController controller, String text) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        label: Text(text),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        // filled: true,
        // fillColor: Colors.grey[200],
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   borderSide: BorderSide(color: Colors.grey[200]!),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   borderSide: BorderSide(color: Colors.blue),
        // ),
      ),
    );
  }
}
