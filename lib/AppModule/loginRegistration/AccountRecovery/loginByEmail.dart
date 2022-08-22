

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/loginRegistration/AccountRecovery/checkEmail.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';

import '../../utils/Components/customButton.dart';
import '../../utils/text.dart';


class LoginByEmail extends StatelessWidget {
  const LoginByEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 5,
                left: 5,
                child: backButton()),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myText(text: 'Login by email', textAlignment: TextAlign.center, size: 25, fontweight: FontWeight.bold),
                  SizedBox(height: 20,),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                  hintText: 'Your email is',
                      hintStyle: TextStyle()
                    ),
                  ),
                  SizedBox(height: 10,),
                  myText(text: 'We\'ll email you a link that will \ninstantly log in you', textAlignment: TextAlign.start),
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: customButton(
                      function: ()=> Get.to(CheckEmail()),
                      text: 'SEND EMAIl',),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
