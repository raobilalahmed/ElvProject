

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/text.dart';

class SafetyCenter extends StatefulWidget  {
  const SafetyCenter({Key? key}) : super(key: key);

  @override
  State<SafetyCenter> createState() => _SafetyCenterState();
}

class _SafetyCenterState extends State<SafetyCenter> with TickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: subHeadingblack(text: 'Safety Center'),
            ),
            SizedBox(height: 20,),
            Container(
              child: TabBar(
                onTap: null,
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.grey,
                controller: _tabController,
                tabs: [
                  Text('Guide'),
                  Text('Tools'),
                  Text('Resources'),
                ],
              ),
            ),
            Container(
              height: 300.0,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              subHeadingblack(text: 'Hi Username'),
                              SizedBox(height: 10,),
                              myText(text: 'Here\'s what you need to know about safety', color: Colors.grey)
                            ],
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage(''),
                            radius: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  Text('Bilal'),
                  Text('Ahmed'),
                ],),
            ),
          ],
        ),
      ),
    );
  }
}
