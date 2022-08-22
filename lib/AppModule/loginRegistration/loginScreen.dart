import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:like/AppModule/loginRegistration/AccountRecovery/accountRecovery.dart';
import 'package:like/AppModule/loginRegistration/TermsConditions/cookiePolicy.dart';
import 'package:like/AppModule/loginRegistration/TermsConditions/privacyPolicy.dart';
import 'package:like/AppModule/loginRegistration/TermsConditions/termsOfUse.dart';
import 'package:like/AppModule/loginRegistration/welcome_screen.dart';

import '../utils/Components/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                  child: Image(
                height: 200,
                width: 200,
                image: AssetImage(
                    "asserts/images/1e67e452c3215359be610f285ddebfc4d48a7f03.png"),
              )),
            ),

            Row(
              children: [
                SimpleText(
                    title: "By clicking Log In, you agree with our ",
                    color: Colors.white),
                 GestureDetector(
                   onTap: ()=> Get.to(TermsOfUse()),
                   child: Text(
                    "Team",
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                ),
                 ),
              ],
            ),
            SimpleText(
                title: "Learn how wo process your data in our ",
                color: Colors.white),

            Row(
              children: [
                 GestureDetector(
                   onTap: ()=> Get.to(PrivacyPolicy()),
                   child: Text(
                    "Privacy policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                ),
                 ),
                SimpleText(title: " and ", color: Colors.white),
                GestureDetector(
                  onTap: ()=> Get.to(CookiePolicy()),
                  child: const Text(
                    "Cookies policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            LoginWith(text: "LOG IN WITH GOOGLE",logoUrl: "asserts/images/94486042f7e22adc223ee886d5de6fd4f5f15194.png", function: ()=> Get.to(WelcomeScreen())),
            SizedBox(
              height: 10,
            ),
            LoginWith(text: "LOG IN WITH FACEBOOK", logoUrl: "asserts/images/c2fa1e149cdaa52969d3bd345879193e4f38fbf3.png", function: ()=> Get.to(WelcomeScreen())),
            SizedBox(
              height: 10,
            ),
            LoginWith(text: "LOG IN WITH PHONE NUMBER", logoUrl: "asserts/images/6e4e588dc4baf28dbec8dbbc0d38af99d531d631.png",function: ()=> Get.to(WelcomeScreen())),
            SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: (() {
                  Get.offAll(AccountRecovery());
                }),
                child: Text(
                  "Trouble logging in?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

   LoginWith({required String text, required logoUrl, Callback? function}) {
    return GestureDetector(
      onTap: function,
      child: Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Image(
                        height: 30,
                        image: AssetImage(
                            logoUrl.toString()),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      text,
                      style: TextStyle(color: Colors.deepOrange),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
