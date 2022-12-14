import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'AppModule/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  Splash_Screen(),
    );
  }
}