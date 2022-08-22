import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';

import '../utils/Components/customButton.dart';
import '../utils/Components/custom_text.dart';

class BlockContactScreen extends StatefulWidget {
  const BlockContactScreen({Key? key}) : super(key: key);

  @override
  State<BlockContactScreen> createState() => _BlockContactScreenState();
}

class _BlockContactScreenState extends State<BlockContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                children: [
                  backButton(),
                  HeadingText(title: "Block Contacts"),
                  Spacer(),
                  Image(image: AssetImage("asserts/images/plus.png")),
                  SizedBox(
                    width: 15,
                  ),
                  Image(image: AssetImage("asserts/images/dots.png"))
                ],
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [tabbar(context,"Contacts"), tabbar(context,"Block")],
              ),
              SizedBox(height: 50,),
              Container(
                color: Colors.red.withOpacity(0.2),
                child: TextField(
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 28,
                    ),
                    hintText: "Search for a name or number",
                  ),
                ),
              ),            SizedBox(height: 50,),

              customButton(
                  text: "Import Contacts",
                  color: Colors.deepOrange,
                  textcolors: Colors.white)
            ],
          ),
        ),
      ),
    );
  }

  Column tabbar(BuildContext context,String text,) {
    return Column(
      children: [
        HeadingText(title: text),
        Container(
          height: 1.5,
          width: MediaQuery.of(context).size.width * 0.4,
          color: Colors.black,
        )
      ],
    );
  }
}
