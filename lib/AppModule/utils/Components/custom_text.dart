

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_colors.dart';

Widget HeadingText(
    {required String title, Color color = CustomColor.primaryColor}) {
  return Text(
    "$title",
    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: color),
  );
}

Widget SimpleText({required String title, Color color = Colors.black}) {
  return Text(
    overflow: TextOverflow.visible,
    title,
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: color),
  );
}
