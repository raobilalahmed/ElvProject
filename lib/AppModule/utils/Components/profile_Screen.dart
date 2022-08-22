import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

Widget customProfile() {
  return Container(
    height: 200,
    width: double.maxFinite,
    child: CustomPaint(
      painter: ProfileCustomPainter(),
    ),
  );
}

class ProfileCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;


    Path path0 = Path();

    canvas.drawPath(path0, paint0);


    Paint paint1 = Paint()
      ..color = Colors.red.withOpacity(0.15);


    Path path1 = Path();
    path1.moveTo(0,size.height);
    path1.lineTo(size.width,size.height);
    path1.lineTo(size.width,0);
    path1.quadraticBezierTo(size.width*0.6303000,size.height*0.2191000,size.width*0.5004250,size.height*0.2299000);
    path1.quadraticBezierTo(size.width*0.3736500,size.height*0.2589000,0,0);
    path1.lineTo(0,size.height);

    canvas.drawPath(path1, paint1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
