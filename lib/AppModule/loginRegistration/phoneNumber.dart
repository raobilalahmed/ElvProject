import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../utils/Components/backButton.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_text.dart';
import 'Birthday_Screen.dart';
import 'my_code.dart';

class MyPhoneScreen extends StatefulWidget {
  const MyPhoneScreen({Key? key}) : super(key: key);

  @override
  State<MyPhoneScreen> createState() => _MyPhoneScreenState();
}

class _MyPhoneScreenState extends State<MyPhoneScreen> {
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
                     
                       HeadingText(title: "My number is"),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                hintText: "NG +234",
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 190,
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                hintText: "Phone Number",
                              ),
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
                        Get.to(const MyCodeScreen());
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
