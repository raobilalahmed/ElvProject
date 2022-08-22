import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'package:like/AppModule/loginRegistration/interesting.dart';
import 'package:like/AppModule/loginRegistration/mySchool.dart';

import '../utils/Components/backButton.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_colors.dart';
import '../utils/Components/custom_text.dart';


class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  bool termscondition = true;
  bool genderWomen= false;
  bool genderMen= false;
  int selectedIndex=0;
  void SelectGender(selectedIndex){
    setState(() {
      if(selectedIndex==0){
        genderWomen=true;
        genderMen=false;
      }
      else if(selectedIndex==1){
        genderWomen=false;
        genderMen=true;
      }
    });
  }
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
                      HeadingText(title: "I am a"),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  SelectGender(0);
                                },
                                child: Container(
                                  height: 50,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    color: genderWomen? CustomColor.primaryColor: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      border:
                                      Border.all(color: Colors.grey, width: 1)),
                                  child: Center(
                                      child: Text(
                                        "WOMAN",
                                        style: TextStyle(
                                          color: genderWomen? Colors.white: Colors.black,
                                            fontSize: 24, fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: (){
                                  SelectGender(1);
                                },
                                child: Container(
                                  child: Container(
                                    height: 50,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: genderMen? CustomColor.primaryColor: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border:
                                        Border.all(color: Colors.grey, width: 1)),
                                    child: Center(
                                        child: Text(
                                          "MEN",
                                          style: TextStyle(
                                            color: genderMen? Colors.white: Colors.black,
                                              fontSize: 24, fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            setState(() {
                              termscondition=!termscondition;
                            });
                          }, icon: termscondition
                              ? Icon(Icons.check_box_outline_blank)
                              : Icon(
                            Icons.check_box,
                            color: Colors.blue,
                          ),),
                          SimpleText(
                              title: " Show my gender on my profile",
                              color: Colors.grey),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      customButton(
                        text: "CONTINUE",
                        color: termscondition? Colors.grey : CustomColor.primaryColor,
                        function: () {
                          Get.to(const MySchoolScreen());
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
