import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';
import 'package:like/AppModule/loginRegistration/interesting.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_text.dart';
import '../utils/text.dart';
import 'Birthday_Screen.dart';

class MyCodeScreen extends StatefulWidget {
  const MyCodeScreen({Key? key}) : super(key: key);

  @override
  State<MyCodeScreen> createState() => _MyCodeScreenState();
}

class _MyCodeScreenState extends State<MyCodeScreen> {
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

                        HeadingText(title: "My code is",color: Colors.black),
                        Row(
                          children: [
                            myText(text: '234134345467890', fontweight: FontWeight.bold),
                            SizedBox(width: 5,),
                            Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(35)),
                                border: Border.all(color: Colors.black)
                              ),
                              child: Center(child: myText(text: 'Resend')),
                            )
                          ],
                        ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                              onChanged: ((value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              }),
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                              onChanged: ((value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              }),
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                              onChanged: ((value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              }),
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                              onChanged: ((value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              }),
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                              onChanged: ((value) {
                                if (value.length == 1) {
                                 // FocusScope.of(context).nextFocus();
                                }
                              }),
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "This is how it will appear in Tinder and you will not be able to change it.",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
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
