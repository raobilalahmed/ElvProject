import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../utils/text.dart';
import 'components/customApphar.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            customAppBar(),
            Divider(
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            myText(
                text: "Welcome to Explore",
                size: 18,
                fontweight: FontWeight.w600),
            myText(text: "My Vibe....", size: 14, fontweight: FontWeight.w300),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.custom(
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 2),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) {
                    int Index = index + 1;
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://source.unsplash.com/random?sig=$index"))

                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black45.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                Center(
                                  child: myText(
                                      text: "Event $Index",
                                      color: Colors.white,
                                      size: 17,
                                      fontweight: FontWeight.w700),
                                ),
                                Spacer(),
                                myText(
                                    text: "Event description",
                                    color: Colors.white,
                                    size: 14,
                                    fontweight: FontWeight.w700),
                                myText(
                                    text: "Discover",
                                    size: 10,
                                    color: Colors.white)
                              ]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
