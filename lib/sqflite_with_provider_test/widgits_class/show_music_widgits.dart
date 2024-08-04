import 'package:flutter/material.dart';


class ShowDataMusicWidgets {
  final BuildContext context;

  ShowDataMusicWidgets({required this.context});

  Widget textView({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      child: Text(text),
    );
  }

  Widget iconButton(
          {required IconData icon, required void Function()? onPressed}) =>
      IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
      );
}
