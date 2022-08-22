import 'package:flutter/material.dart';
import 'package:like/AppModule/HomeModule/components/customApphar.dart';
import 'package:like/AppModule/HomeModule/recentlyActive.dart';
import 'package:like/AppModule/HomeModule/whoLikeYou.dart';
import '../utils/text.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  late PageController _controller;
  int currentindex = 0;
  List pages = [
    WhoLikesYou(),
    RecentlyActive()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 20),
            child: customAppBar(),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [
                GestureDetector(
                    onTap: (){
                        setState(() {
                          currentindex=0;
                        });
                    },
                    child: myText(text: '26 likes', color: currentindex==0? Colors.black : Colors.black12)),
                GestureDetector(
                    onTap: (){
                        setState(() {
                          currentindex=1;
                        });
                    },
                    child: myText(text: 'Top Picks', color: currentindex==1? Colors.black : Colors.black12))
              ],),
            Divider(height: 5,color: Colors.black,),
            Expanded(child: PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentindex = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return pages[currentindex];
              },
            ),
            )
          ],
        ),
      ),
    );
  }
}
