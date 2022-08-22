import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/loginRegistration/tell_me_More.dart';

import '../utils/Components/customButton.dart';
import '../utils/Components/custom_colors.dart';
import '../utils/Components/custom_text.dart';
import 'avoidScreen.dart';

class EnableLocation extends StatelessWidget {
  const EnableLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(color: Colors.red.withOpacity(0.1),borderRadius: BorderRadius.circular(80),
              border: Border.all(color: Colors.red.withOpacity(0.5))
              
              ),
              child: Center(
                child: Icon(Icons.location_on_outlined, size: 70, color: Colors.red.withOpacity(0.5),),
              ),
            ),
            //     child: Container(
            //   child: Image(
            //       height: MediaQuery.of(context).size.height * 0.1,
            //       width: MediaQuery.of(context).size.width * 0.3,
            //       image: AssetImage(
            //           "asserts/images/a4ad8f1b9ab08f498227571dd691dea6250439c6.png")),
            // )),
                SizedBox(
                  height: 30,
                ),

            HeadingText(title: "Enable Location"),
            SizedBox(
              height: 20,
            ),
            Text(
              "You\'ll need to enable your location in\n order to use Tinder",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *0.2,
            ),
            customButton(
                text: "Continue".toUpperCase(),
                color: Colors.deepOrange,
                textcolors: Colors.white,

                function: (() {
                  Get.to(()=>AvoidLikeScreen());
                })
            ),

            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>TellMeMore());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SimpleText(
                      title: "Tell me more".toUpperCase(),
                      color: CustomColor.primaryColor),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: CustomColor.primaryColor,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
