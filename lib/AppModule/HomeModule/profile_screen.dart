import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/HomeModule/setting_screen.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';
import '../utils/Components/custom_colors.dart';
import '../utils/Components/custom_text.dart';
import '../utils/Components/profile_Screen.dart';
import '../utils/text.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  backButton(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.28,
                  ),
                  HeadingText(title: "Profile"),
                ],
              ),
              Expanded(
                  child: Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: Stack(alignment: AlignmentDirectional.center, children: [
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * 0.39,
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Colors.red,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "asserts/images/efdfd9d9204a9a9f9455a35422e5a966b64be332.png")),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * 0.38,
                        child: Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child:
                              myText(text: "100% COMPLETE", color: Colors.white)),
                        ),
                      ),
                      //SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HeadingText(title: "Profile name, Age"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.06,
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.45,
                        child: customProfileContainer(
                            context: context,
                            height: 90,
                            width: 90,
                            text: "EDIT PROFILE",
                            image:
                            "asserts/images/8f0ef80a6bb75244a2fd750ac3b6938de24c4659.png"),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.38,
                        left: 40,
                        child: GestureDetector(
                          onTap: (){
                            Get.to(SettingScreen());
                          },
                          child: customProfileContainer(
                              context: context,
                              height: 80,
                              width: 80,
                              text: "Setting".toUpperCase(),
                              image: "asserts/images/image 6.png"),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.38,
                        right: 40,
                        child: customProfileContainer(
                            context: context,
                            height: 80,
                            width: 80,
                            text: "Safety".toUpperCase(),
                            image:
                            "asserts/images/92c92fa9179b252224d400a60d2a99fc944a453c.png"),
                      ),
                    ]),

                  )),

              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(child: customProfile()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          height: 50,
                          width: 40,
                          image: AssetImage("asserts/images/75356c3a4392e5191b537a3142a562e19ec9fe80.png")),
                      HeadingText(title: "Like Premium"),
                    ],
                  ),
                  Positioned(
                      bottom: 60,
                      child:  myText(text: "Unlock the best features Like has to offer.",color: CustomColor.primaryColor)),
                  Positioned(
                    bottom: 10,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.045,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          color: CustomColor.primaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: myText(
                            text: "Learn more".toUpperCase(),
                            color: Colors.white,
                            size: 10),
                      ),
                    ),
                  ),
                  // Positioned( bottom: 10,
                  //   child: customButton(text: 'Learn More', color: Colors.deepOrange, textcolors: Colors.white ),
                  // )
                ],

              ),
            ],
          )),
    );
  }
}

Widget customProfileContainer({
  required BuildContext context,
  required double height,
  required double width,
  required String image,
  required String text,
}) {
  return Column(
    children: [
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
              )
            ],
            borderRadius: BorderRadius.circular(100)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image(image: AssetImage(image)),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      ),
      myText(
        text: text,
        color: CustomColor.primaryColor,
        size: 16,
      )
    ],
  );
}
