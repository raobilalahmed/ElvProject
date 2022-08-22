


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../utils/text.dart';
import 'IconImagMenu.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            iconImgMenu(),
            Divider(height: 5, color: Colors.grey,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subHeadingblack(text: 'Our Commitment To You'),
                  SizedBox(height: 20,),
                  myText(
                      textAlignment: TextAlign.start,
                      text: 'Lorem ipsum dolor sit amet, consectetur Adipiscing elit. Leo a facilisi sed eleifend Ante. Sit at tortor scelerisque ac id mi. Id Sed vitae porta at mattis id quis. Tincidunt Consequat sollicitudin dolor duis dapibus.  Eu hendrerit sapien pharetra mauris ut Sollicitudin. Pulvinar in varius facilisis vitae Morbi volutpat in ligula consequat. Aliquam massa laoreet cras imperdiet. Amet amet fermentum pretium in Malesuada eget malesuada eget. Vitae Placerat nunc, bibendum nunc venenatis.'
                      , color: Colors.grey)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }


}
