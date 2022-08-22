import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget headingText({required String text}) {
  return Text(
    text,
    overflow: TextOverflow.visible,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.w800,
      fontFamily: 'Poppins',
    ),
  );
}

Widget subHeadingText({required String text}) {
  return Text(
    overflow: TextOverflow.visible,
    text,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
  );
}

Widget subHeadingblack({required String text}) {
  return Text(
    overflow: TextOverflow.visible,
    text,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
  );
}


Widget subHeadingwhite({required String text}) {
  return Text(
    overflow: TextOverflow.visible,
    text,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
  );
}

Widget simpleTitleText({required String text}) {
  return Text(
    overflow: TextOverflow.visible,
    text,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      //fontFamily: 'Poppins',
    ),
  );
}

Widget simpleText({
  required String text,
}) {
  return Flexible(
    child: Text(
      overflow: TextOverflow.visible,
      text,
      style: const TextStyle(
        color: Colors.black87,
        overflow: TextOverflow.visible,
        fontSize: 15,
        // fontWeight: FontWeight.w500,
        //fontFamily: 'Poppins',
      ),
      textAlign: TextAlign.start,
    ),
  );
}

Widget simpleTextprimary({
  required String text,
}) {
  return Text(
    overflow: TextOverflow.visible,
    text,
    style: const TextStyle(
      color: Colors.blue,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    ),
    textAlign: TextAlign.center,
  );
}

Widget myText({
  required String text,
  TextAlign textAlignment = TextAlign.center,
  double size = 15,
  FontWeight fontweight = FontWeight.w500,
  Color color = Colors.black,
  TextDecoration textDecoration= TextDecoration.none
}) {
  return Text(
    text,
    overflow: TextOverflow.visible,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontweight,
        fontFamily: 'Poppins',
        decoration: textDecoration
    ),
    textAlign: textAlignment,
  );
}

Widget settingTxt({required String text}) {
  return Padding(
    padding: const EdgeInsets.only(left :30.0),
    child: Text(
      overflow: TextOverflow.visible,
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      ),
    ),
  );
}

myBullet(){
  return Container(
    height: 8.0,
    width: 8.0,
    decoration: new BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle,
    ),
  );
}


greenBullet(){
  return Container(
    height: 8.0,
    width: 8.0,
    decoration: new BoxDecoration(
      color: Colors.green,
      shape: BoxShape.circle,
    ),
  );
}


