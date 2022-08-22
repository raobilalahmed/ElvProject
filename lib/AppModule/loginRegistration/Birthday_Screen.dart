import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../utils/Components/backButton.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_text.dart';
import '../utils/text.dart';
import 'gender_screen.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({Key? key}) : super(key: key);

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
                      HeadingText(title: "My \nbirthday is"),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                    decoration: InputDecoration(
                                        hintText: "MM",
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none),
                                    onChanged: ((value) {
                                      if (value.length == 2) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    }),
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(2),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                myText(text: "/", size: 22),
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                    decoration: InputDecoration(
                                        hintText: "DD",
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none),
                                    onChanged: ((value) {
                                      if (value.length == 2) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    }),
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(2),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                myText(text: "/", size: 22),
                                Container(
                                  height: 50,
                                  width: 60,
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                    decoration: InputDecoration(
                                        hintText: "YYYY",
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none),
                                    // onChanged: ((value) {
                                    //   if (value.length ==4) {
                                    //     FocusScope.of(context).nextFocus();
                                    //   }
                                    // }),
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(4),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Your age will be public",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      customButton(
                        text: "CONTINUE",
                        function: () {
                          Get.to(const GenderScreen());
                        },
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
