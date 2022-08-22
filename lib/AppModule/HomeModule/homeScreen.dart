import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/HomeModule/components/customApphar.dart';
import 'package:like/AppModule/HomeModule/profile.dart';

import '../utils/Components/custom_text.dart';
import '../utils/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black38.withOpacity(0.2),
                blurRadius: 2,
                offset: Offset(0, 0),
                spreadRadius: 40,
              )
            ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: customAppBar(),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                CarouselSlider(
                    items: [
                      Container(
                       // margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('asserts/images/20e4e43c48823a7e17f16d3ca23a09f3816b2bea.png'),
                            fit: BoxFit.cover,
                          ),
                        ),),
                      Container(
                        // margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('asserts/images/efdfd9d9204a9a9f9455a35422e5a966b64be332.png'),
                            fit: BoxFit.cover,
                          ),
                        ),),
                    ],
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height,

                     // aspectRatio: 16/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                     // autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )
                ),
                Positioned(
                    left: 20,
                    bottom: MediaQuery.of(context).size.height*0.25,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap:()=> Get.to(ProfileScreen()),
                          child: HeadingText(
                              title: "Will Smith   31", color: Colors.white),
                        ),
                        Icon(Icons.check_circle_sharp, color: Colors.lightBlue,),
                        Icon(Icons.info_rounded, color: Colors.white,)
                      ],
                    )),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black38.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 13,
                                  width: 13,
                                  decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),

                                myText(
                                    text: "Recently Active",
                                    color: Colors.white,
                                    size: 18, )
                              ],
                            ),
                            myText(
                                text:
                                "BIO\n Lorem ipsum dolor sit\n amet, consectetur\n adipiscing elit.",
                                color: Colors.white,textAlignment: TextAlign.start,
                                size: 17),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                circleContainer(
                                    "asserts/images/image 4.png", Colors.green),
                                circleContainer(
                                    "asserts/images/Vector (3).png", Colors.red),
                                circleContainer(
                                    "asserts/images/Vector (4).png", Colors.blue),
                                circleContainer("asserts/images/Vector (5).png",
                                    Colors.greenAccent),
                                circleContainer("asserts/images/Vector (6).png",
                                    Colors.blueAccent),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ]),

      ),
    );
  }

  Container circleContainer(String img, Color colors) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img)),
          border: Border.all(color: colors, width: 1.5),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50)),
    );
  }
}
