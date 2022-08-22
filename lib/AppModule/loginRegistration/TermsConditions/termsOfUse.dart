

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/text.dart';


class TermsOfUse extends StatelessWidget {
  const TermsOfUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                       // color: Colors.red,
                        image: DecorationImage(image: AssetImage('asserts/images/bfa8ab9e9114c9a77818fcf6a619ad73d975ae76.png') )
                    ),
                  ),
                  IconButton(onPressed: null, icon: Icon(Icons.menu)),
                ],
              ),
            ),
            Divider(height: 5, color: Colors.grey,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subHeadingblack(text: 'TERMS OF USE'),
                  myText(text: 'Last revised on july12, 2022', color: Colors.grey),
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
