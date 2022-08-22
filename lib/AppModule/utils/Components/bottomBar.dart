import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like/AppModule/HomeModule/eventScreen.dart';
import 'package:like/AppModule/HomeModule/favouriteScreen.dart';

import '../../HomeModule/chatModule/chat_screen.dart';
import '../../HomeModule/homeScreen.dart';
import '../../HomeModule/newMatches.dart';

class LikeBottomBar extends StatefulWidget {
  const LikeBottomBar({Key? key}) : super(key: key);

  @override
  State<LikeBottomBar> createState() => _LikeBottomBarState();
}

class _LikeBottomBarState extends State<LikeBottomBar> {
  int NavValue = 0;
  List Page = [
    HomeScreen(),
    EventsScreen(),
    FavouriteScreen(),
    ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Page[NavValue]),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        width: double.maxFinite,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(offset: Offset(0, 0), color: Colors.grey, blurRadius: 0.5)
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  NavValue = 0;
                });
              },
              // child: Image(
              //       image: AssetImage("asserts/images/IMG-20220712-WA0063 2.png")),

              child: Image(
                  image: NavValue == 0
                      ? AssetImage("asserts/images/fireSelected.png")
                      : AssetImage("asserts/images/IMG-20220712-WA0063 2.png")),
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    NavValue = 1;
                  });
                },
                child:
                Image(image: NavValue==1? AssetImage("asserts/images/exploreSelected.png"):
                AssetImage("asserts/images/Vector (2).png")
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    NavValue = 2;
                  });
                },
                child: Image(image: NavValue==2?AssetImage("asserts/images/starSelected.png"):
                AssetImage("asserts/images/Vector.png")
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    NavValue = 3;
                  });
                },
                child:
                Image(image: NavValue==3? AssetImage("asserts/images/chatSelected.png"):
                AssetImage("asserts/images/Vector (1).png")
                )
            ),
          ],
        ),
      ),
    );
  }
}
