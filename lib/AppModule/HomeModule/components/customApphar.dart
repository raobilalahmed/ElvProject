import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/HomeModule/profile.dart';

import '../profile_screen.dart';

customAppBar(){
  return Row(
    children: [
      GestureDetector(
        onTap: ()=> Get.to(UserProfileScreen()),
        child: CircleAvatar(
          backgroundImage: AssetImage('asserts/images/efdfd9d9204a9a9f9455a35422e5a966b64be332.png'),
          radius: 20,
        ),
      ),
      SizedBox(width: 100,),
      Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('asserts/images/logoCrop.png'))
        ),
      ),
    ],
  );
}