

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/text.dart';

class WhoLikesYou extends StatefulWidget {
  const WhoLikesYou({Key? key}) : super(key: key);

  @override
  State<WhoLikesYou> createState() => _WhoLikesYouState();
}
int currentIndex=0;
class _WhoLikesYouState extends State<WhoLikesYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              fittedBoxContainer(txt: 'My DIY'),
              fittedBoxContainer(txt: 'Dancing'),
              fittedBoxContainer(txt: 'Hot Yoga'),
              fittedBoxContainer(txt: 'Memories')
            ],
          ),
          SizedBox(height: 20,),
          Center(child: myText(text: 'Upgrade to gold to see people who \nhave already liked you', size: 14),),
          SizedBox(height: 10,),
          Expanded(child: GridView.builder(
              controller: ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1/1.5,
                  mainAxisSpacing: 2, crossAxisCount: 2),
              itemCount: 10,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Container(
                    height: 300,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://source.unsplash.com/random?sig=$i")),
                      color: Colors.blue,
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                );
              }

              )
          )
        ],
      ),
    );
  }

  FittedBox fittedBoxContainer({required String txt}) {
    return FittedBox(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black54,width: 1.5),
              ),
              child: Center(
                child: Text(txt),
              ),
            ),
          );
  }
}
