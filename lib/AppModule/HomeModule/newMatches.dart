// ignore_for_file: prefer_const_constructors


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like/AppModule/HomeModule/components/customApphar.dart';

import '../utils/text.dart';

class NewMatches extends StatelessWidget {
  const NewMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customAppBar(),
                SizedBox(height: 10),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.,
                  children: const [
                    Icon(Icons.search),
                    SizedBox(width: 10,),
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search 3 Matches',
                        hintStyle: TextStyle(
                        )
                      ),
                    )),
                  ],
                ),
                SizedBox(height: 20,),
                myText(text: 'New Matches'),
                SizedBox(height: 10,),
                Container(
                  height: 180,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext, i){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                       // height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    myText(text: 'Messages', size: 18),
                    SizedBox(width: 18,),
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Center(child: Text('1',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                imageText(txt1: 'Jason', txt2: 'Recently active, match now'),
                imageText(txt1: 'Syngerin', txt2: 'Hi, how are you doing?'),
                imageText(txt1: 'Mark', txt2: 'Let\'s meet today'),
                imageText(txt1: 'Bilal', txt2: 'Where are you'),
                imageText(txt1: 'Mark', txt2: 'Let\'s meet today'),
                imageText(txt1: 'Bilal', txt2: 'Where are you')
              ],
            ),
          ),
        ),
      )
    );
  }

   imageText({required String txt1, required String txt2}) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
                  children:  [
                    CircleAvatar(
                      backgroundImage: AssetImage('asserts/images/efdfd9d9204a9a9f9455a35422e5a966b64be332.png'),
                      radius: 30,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        myText(text: txt1, size: 18),
                        myText(text: txt2, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
        SizedBox(height: 20,),
        Divider(height: 5, color: Colors.deepOrange,thickness: 1,)
      ],
    );
  }
}
