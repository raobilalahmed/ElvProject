import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';
import 'package:like/AppModule/loginRegistration/interesting.dart';
import 'package:like/AppModule/loginRegistration/phoneNumber.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_text.dart';
import 'Birthday_Screen.dart';
import 'FirstName_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              backButton(
                  icons: Icons.close),
              Container(
                margin:
                    EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        height: 100,
                        width: 120,
                        image: AssetImage(
                            "asserts/images/75356c3a4392e5191b537a3142a562e19ec9fe80.png"),
                      ),
                      HeadingText(
                          title: "Welcome to Like", color: Colors.deepOrange),
                      SizedBox(
                        height: 10,
                      ),
                      SimpleText(
                          title: "Please follow these House Rules",
                          color: Colors.deepOrange),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          textmethod("Be yourself",
                              "Make sure your photos, age, and bio true to who you are."),
                          SizedBox(
                            height: 10,
                          ),
                          textmethod("Stay safe",
                              "Don\'t be too quick to give out personal  information. Date Safely"),
                          SizedBox(
                            height: 10,
                          ),
                          textmethod("Play it cool",
                              "Respect others and treat them as you would like to be treated."),
                          SizedBox(
                            height: 10,
                          ),
                          textmethod(
                              "Be proactive", "Always report bad behaviour"),
                        ],
                      )),
                      customButton(
                          text: "I Agree",
                          function: () {
                            Get.to( MyPhoneScreen());
                          },
                          color: Colors.deepOrange,
                          textcolors: Colors.white),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column textmethod(String text, String subtext) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.done,
              size: 30,
              color: Colors.deepOrange,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          subtext,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.deepOrange),
        )
      ],
    );
  }
}
