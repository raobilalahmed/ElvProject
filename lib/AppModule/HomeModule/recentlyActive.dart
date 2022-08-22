import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/text.dart';

class RecentlyActive extends StatelessWidget {
  const RecentlyActive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: subHeadingblack(text: 'Recently Active'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(image: AssetImage('asserts/images/efdfd9d9204a9a9f9455a35422e5a966b64be332.png'), fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Stack(
                          children: [
                            Positioned(
                                bottom: 5,
                                right: 5,
                                left: 5,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        subHeadingwhite(text: 'Vector, 20'),
                                        Row(
                                          children: [
                                            greenBullet(),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            myText(text: 'Recently Active', color: Colors.white)
                                          ],
                                        )
                                      ],
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(20))
                                      ),
                                      child: Icon(Icons.star, color: Colors.purple,),
                                    )
                                  ],
                                ),)
                          ],
                        ),
                      ),
                    );
                  })),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    color: Colors.grey.withOpacity(0.3)
                  )
                ]
              ),
              child: Center(child: subHeadingblack(text: 'SEE MORE')),
            ),
          )
        ],
      ),
    );
  }
}
