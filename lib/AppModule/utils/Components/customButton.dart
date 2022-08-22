import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

Widget customButton(
    {required String text, Callback? function, Color color = Colors.grey,Color textcolors=Colors.black}) {
  return GestureDetector(
    onTap: function,
    child: Container(
      height: 40,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
          child: Text("$text",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: textcolors))),
    ),
  );
}
