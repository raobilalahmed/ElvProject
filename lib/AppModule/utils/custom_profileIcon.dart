import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like/AppModule/utils/text.dart';


Widget custom_profile_Icon(
    {required String text,
      required IconData icons,
      Color colors = Colors.black}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 3),
    child: Row(
      children: [
        Icon(
          icons,
          color: colors,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),
        myText(text: text, color: colors, size: 14),
      ],
    ),
  );
}
