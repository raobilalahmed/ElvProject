


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

iconImgMenu() {
  return Padding(
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
        IconButton(onPressed: null, icon: Icon(Icons.menu, color: Colors.black,)),
      ],
    ),
  );
}