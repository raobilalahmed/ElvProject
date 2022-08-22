import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_text.dart';
import 'block_contact.dart';

class TellMeMore extends StatelessWidget {
  const TellMeMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Image(image: AssetImage("asserts/images/Vector (7).png")),
              SizedBox(
                height: 100,
              ),
              customButton(
                  text: "allow location".toUpperCase(),
                  color: Colors.deepOrange,
                  textcolors: Colors.white,
                  function: (){
                    Get.to(() => BlockContactScreen());
                  }
              ),
              SizedBox(
                height: 60,
              ),
              HeadingText(title: "Meet People Nearby"),
              SizedBox(
                height: 40,
              ),
              Text(
                "Your location will be used to show potential matches near you",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
