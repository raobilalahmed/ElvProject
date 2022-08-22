

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:like/AppModule/loginRegistration/AccountRecovery/loginByEmail.dart';
import 'package:like/AppModule/loginRegistration/loginScreen.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';

import '../../utils/Components/customButton.dart';
import '../../utils/text.dart';

class AccountRecovery extends StatelessWidget {
  const AccountRecovery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 5,
                left: 5,
                child: IconButton(
                  onPressed: ()=> Get.to(LoginScreen()),
                  icon: Icon(Icons.arrow_back),
                )),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myText(text: 'Account \nRecovery', textAlignment: TextAlign.center, size: 22, fontweight: FontWeight.bold),
                SizedBox(height: 20,),
                myText(
                    size: 18,
                    fontweight: FontWeight.bold,
                    textAlignment: TextAlign.center,text: 'Changed your phone \nnumbers, or lost access \n   to your Facebook \n Account? \n We can help you login\n with your email'),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: customButton(
                      function: ()=> Get.to(LoginByEmail()),
                      text: 'LOGIN WITH EMAIl', color: Colors.deepOrange, textcolors: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
