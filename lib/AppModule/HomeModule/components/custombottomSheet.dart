import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/Components/customButton.dart';
import '../../utils/text.dart';


customBottomSheet(BuildContext context) {
  return Padding(
      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width *0.05, top: MediaQuery.of(context).size.height *0.07, right: MediaQuery.of(context).size.width *0.6 ),
      child: ListView(
        children: [
          Container(
            height: 100,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myText(text: 'Share Profile'),
                Divider(height: 1,thickness: 1,color: Colors.black,),
                myText(text: 'Report')
              ],
            ),
          )
        ],
      ));
}
