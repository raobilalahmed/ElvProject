import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_colors.dart';
import '../utils/Components/custom_text.dart';
import '../utils/text.dart';
import 'Add_photo.dart';

class InterestingScreen extends StatefulWidget {
  const InterestingScreen({Key? key}) : super(key: key);

  @override
  State<InterestingScreen> createState() => _InterestingScreenState();
}

class _InterestingScreenState extends State<InterestingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
          const EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              HeadingText(title: "Interests"),
              const SizedBox(
                height: 20,
              ),
              SimpleText(
                  title:
                  "Let everything know what you\'re passionate\n about by adding it to your profile"),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                    child: GridView.builder(
                      itemCount: contents.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 3,
                          crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              contents[index].Isselected =
                              !contents[index].Isselected;

                              if (contents[index].Isselected == true) {
                                selectitem.add(
                                  InterestingList(
                                      name: contents[index].name,
                                      Isselected: contents[index].Isselected),
                                );
                              } else if (contents[index].Isselected == false) {
                                selectitem.removeWhere((element) =>
                                element.name == contents[index].name);
                              }
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 20,
                            decoration: BoxDecoration(
                                color: contents[index].Isselected
                                    ? Colors.deepOrange
                                    : Colors.white,
                                border: Border.all(
                                    color: contents[index].Isselected
                                        ? Colors.deepOrange
                                        : Colors.grey,
                                    width: 3),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                            child: myText(
                                text: contents[index].name,
                                color: contents[index].Isselected
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        );
                      },
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              selectitem.length == 5
                  ? customButton(
                  text: "CONTINUE ${selectitem.length}/5",
                  color: Colors.deepOrange,
                  function: () {
                    Get.to(AddPhoto());
                  },
                  textcolors: Colors.white)
                  : customButton(
                text: "CONTINUE ${selectitem.length}/5",
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class InterestingList {
  String name;
  bool Isselected;
  InterestingList({required this.name, required this.Isselected});
}

List<InterestingList> contents = [
  InterestingList(name: "Yoga", Isselected: false),
  InterestingList(name: "music", Isselected: false),
  InterestingList(name: "game", Isselected: false),
  InterestingList(name: "funny", Isselected: false),
  InterestingList(name: "app", Isselected: false),
  InterestingList(name: "videos", Isselected: false),
  InterestingList(name: "music", Isselected: false),
  InterestingList(name: "product", Isselected: false),
  InterestingList(name: "price", Isselected: false),
  InterestingList(name: "alert", Isselected: false),
  InterestingList(name: "internet", Isselected: false),
  InterestingList(name: "videos", Isselected: false),
  InterestingList(name: "Yoga", Isselected: false),
  InterestingList(name: "music", Isselected: false),
  InterestingList(name: "game", Isselected: false),
  InterestingList(name: "funny", Isselected: false),
  InterestingList(name: "app", Isselected: false),
  InterestingList(name: "videos", Isselected: false),
  InterestingList(name: "music", Isselected: false),
  InterestingList(name: "product", Isselected: false),
  InterestingList(name: "price", Isselected: false),
  InterestingList(name: "Yoga", Isselected: false),
  InterestingList(name: "music", Isselected: false),
  InterestingList(name: "game", Isselected: false),
  InterestingList(name: "funny", Isselected: false),
  InterestingList(name: "app", Isselected: false),
  InterestingList(name: "videos", Isselected: false),
  InterestingList(name: "music", Isselected: false),
  InterestingList(name: "product", Isselected: false),
  InterestingList(name: "price", Isselected: false),
  InterestingList(name: "alert", Isselected: false),
  InterestingList(name: "internet", Isselected: false),
  InterestingList(name: "videos", Isselected: false),
];

List<InterestingList> selectitem = [];