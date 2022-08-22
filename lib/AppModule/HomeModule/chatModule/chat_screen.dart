
// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';

import '../../utils/text.dart';


class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        backButton(),
                        CircleAvatar(
                          backgroundImage: AssetImage('asserts/images/efdfd9d9204a9a9f9455a35422e5a966b64be332.png'),
                          radius:20,
                        ),
                        SizedBox(width: 10,),
                        myText(text: 'Bilal Ahmed')
                      ],
                    ),
                  ),
                  Row(children: [
                    IconButton(onPressed: null, icon: Icon(Icons.videocam_rounded, color: Colors.deepPurple,size: 30,)),
                    IconButton(onPressed: null, icon: Icon(Icons.account_circle_rounded, color: Colors.deepPurple,size: 30,)),
                  ],)
                ],),
                Divider(height: 5, color: Colors.black,)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    // border: Border(
                    //   top: BorderSide(
                    //       color: Colors.lightBlueAccent, width: 2.0),
                    // ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            //Do something with the user input.
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                            hintText: 'Type your message here...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          //Implement send functionality.
                        },
                        child: Text(
                          'Send',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
