import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'loginRegistration/FirstName_Screen.dart';
import 'loginRegistration/loginScreen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.starttime();
  }

  starttime() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offAll(LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image(
            height: 200,
            width: 200,
        image: AssetImage(
            "asserts/images/bfa8ab9e9114c9a77818fcf6a619ad73d975ae76.png"),
      )),
    );
  }
}
