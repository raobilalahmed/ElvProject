import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';

import '../HomeModule/homeScreen.dart';
import '../utils/Components/bottomBar.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_text.dart';

class AvoidLikeScreen extends StatelessWidget {
  const AvoidLikeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          backButton(icons: Icons.close),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingText(title: "Want to avoid someone you know on Like"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  SimpleText(
                      title:
                      "It\'s easy - share your device\'s \ncontacts with Like when using this \nfeature to pick who you want to\n avoid.\n\nWe\'ll store your blocked contacts to\n stop you from seeing each other if\nyour contact has an account with \nthe same info you privide. You can\nstop sharing contacts with us in your setting"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  const Text(
                    "Learn more here, include how Like\nprocesses your contact",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.deepOrange),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  customButton(
                    text: "continue".toUpperCase(),
                    color: Colors.deepOrange,
                    textcolors: Colors.white,
                    function: () {
                     Get.to(() => LikeBottomBar());
                    },
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
