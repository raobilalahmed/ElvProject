import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/HomeModule/newMatches.dart';

import '../utils/Components/custom_text.dart';
import '../utils/custom_profileIcon.dart';
import '../utils/text.dart';
import 'components/custombottomSheet.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  _showDialogBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              // width: 160,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child:
                        HeadingText(title: "Report", color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: myText(
                            text: "We won\’t tell Garreth", size: 14)),
                    SizedBox(
                      height: 30,
                    ),
                    ReportDialog("Fake Profile/Spam"),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 3,
                      thickness: 2,
                    ),
                    ReportDialog("Inappropraite messages"),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 3,
                      thickness: 2,
                    ),
                    ReportDialog("Inappropraite profile photos"),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 3,
                      thickness: 2,
                    ),
                    ReportDialog("Inappropraite info"),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 3,
                      thickness: 2,
                    ),
                    ReportDialog("Underaged user"),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 3,
                      thickness: 2,
                    ),
                    ReportDialog("Offline behaviour"),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 3,
                      thickness: 2,
                    ),
                    ReportDialog("Someone is in danger"),
                  ],
                ),
              ),
            ),
          );
        });
  }

  ReportDialog(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
      child: myText(text: text, size: 14),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.34,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'asserts/images/e053032ed38733b0bda962b76c224f456cfacbae.png'))),
            ),
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return customBottomSheet(context);
                    });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10),
                child: Row(
                  children: [
                    share_button(),
                    share_button(),
                    share_button(),
                  ],
                ),
              ),
            ),
            Positioned(
                right: 20,
                top: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                )),
            // Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 320, bottom: 20, right: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingText(
                          title: "Garreth 42",
                          color: Colors.black,
                        ),
                        custom_profile_Icon(
                            text: "Verified",
                            icons: Icons.check_circle,
                            colors: Colors.blue),
                        custom_profile_Icon(
                          text: "University of Minnesota",
                          icons: Icons.school_outlined,
                        ),
                        custom_profile_Icon(
                          text: "3 miles away",
                          icons: Icons.location_on_outlined,
                        ),
                        custom_profile_Icon(
                          text: "Female",
                          icons: Icons.female,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        myText(text: "About Me", size: 18),
                        SizedBox(
                          height: 10,
                        ),
                        SimpleText(
                          title:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, Sit gravida a, purus neque. Nunc",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            interest_container(),
                            interest_container(),
                            interest_container(),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        myText(text: "Interest", size: 18),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            interest_container(),
                            interest_container(),
                            interest_container(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                      child: SimpleText(
                        title: "Share mariam\'s profile".toUpperCase(),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: GestureDetector(
                          onTap: ()=> Get.to(NewMatches()),
                          child: myText(
                              text: "see what a friend thinks".toUpperCase(),
                              size: 12),
                        )),
                  ),
                  GestureDetector(
                    onTap: (() => _showDialogBox(context)),
                    child: Center(
                        child: myText(
                            text: "report mariam".toUpperCase(),
                            size: 12,
                            color: Colors.deepOrange)),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Container interest_container() {
    return Container(
      height: 25,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }

  Container share_button() {
    return Container(
      margin: EdgeInsets.only(right: 3),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
