import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/loginRegistration/interesting.dart';

import '../utils/Components/backButton.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_text.dart';
import 'Birthday_Screen.dart';

class FirstNameScreen extends StatefulWidget {
  const FirstNameScreen({Key? key}) : super(key: key);

  @override
  State<FirstNameScreen> createState() => _FirstNameScreenState();
}

class _FirstNameScreenState extends State<FirstNameScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              backButton(),
              Container(
                margin:
                    EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                   
                       HeadingText(title: "My First\nname is"),
                      const SizedBox(
                        height: 60,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          TextField(
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              hintText: "First Name",
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "This is how it will appear in Tinder and you will not be able to change it.",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                      const SizedBox(
                        height: 60,
                      ),
                      
                      customButton(text: "CONTINUE",function: () {
                        Get.to(const BirthdayScreen());
                      },),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
