

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';

import '../../utils/text.dart';


class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 5,
                left: 5,
                child: backButton(),),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myText(text: 'Check your \n email!', textAlignment: TextAlign.center, size: 22, fontweight: FontWeight.bold),
                  SizedBox(height: 20,),
                  myText(
                      size: 18,
                      fontweight: FontWeight.bold,
                      textAlignment: TextAlign.center,text: 'If we found an account with \nyour email \n(abcd@gmail.com),an \n email has been sent. Please \n check your email in a\nmoment.'),
                  SizedBox(height: 20,),
                  myText(text: 'Didn\'t receive a link?', color: Colors.grey, size: 20),
                ],
              ),
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.height* 0.06,
                left: 30,
                right: 30,
                child: Column(
                  children: [
                    myText(text: 'USE A DIFFERENT EMAIL', textDecoration: TextDecoration.underline),
                    SizedBox(height: 20,),
                    myText(text: 'USE YOUR PHONE NUMBER', textDecoration: TextDecoration.underline)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
