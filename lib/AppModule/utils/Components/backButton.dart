import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget backButton({IconData icons = Icons.arrow_back,}) {
  return IconButton(
    onPressed: () {
      Get.back();
    },
    icon: Icon(
      icons,
      size: 30,
      color: Colors.black,
    ),
  );
}
