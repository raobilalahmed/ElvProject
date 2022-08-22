import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:like/AppModule/loginRegistration/loginScreen.dart';
import 'package:like/AppModule/utils/Components/backButton.dart';
import 'package:like/AppModule/utils/Components/toggleButton.dart';

import '../utils/Components/rangeSlider.dart';
import '../utils/text.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double _value=100;
  bool isToggle=true;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: backButton(),
        title: headingText(text: "Setting"),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myText(
                    text: "Account Setting",
                    size: 18,
                    fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.08,
                    widget: Row(
                      children: [
                        myText(text: "Phone Number", size: 18),
                        Expanded(child: Container()),
                        myText(
                            text: "1234*****  >", size: 18, color: Colors.grey),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.01,
                ),
                myText(
                    text: "Verify a Phone Number to help secure your account",
                    color: Colors.grey),
                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Discover Setting",
                    size: 18,
                    fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.08,
                    widget: Row(
                      children: [
                        myText(text: "Location", size: 18),
                        Expanded(child: Container()),
                        myText(
                            text: "My Current Location",
                            size: 18,
                            color: Colors.purple),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.01,
                ),
                myText(
                    text: "Verify a Phone Number to help secure your account",
                    color: Colors.grey),
                SizedBox(
                  height: _size * 0.03,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.08,
                    widget: Row(
                      children: [
                        myText(text: "Global", size: 18),
                        Expanded(child: Container()),
                        myToggleButton(),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.01,
                ),
                myText(
                    text: "Verify a Phone Number to help secure your account",
                    color: Colors.grey),
                SizedBox(
                  height: _size * 0.03,
                ),

                customcontainer(
                    context: context,
                    height: _size * 0.15,
                    widget: Column(
                      children: [
                        Row(
                          children: [
                            myText(
                                text: "Maximum Distance",
                                color: Colors.black54),
                            Expanded(child: Container()),
                            myText(
                                text: "50mi.",
                                color: Colors.deepOrange,
                                size: 18),
                          ],
                        ),
                        Slider(
                            value: _value,
                            max: 100,
                            min: 0,
                            activeColor: Colors.deepOrange,
                            inactiveColor: Colors.deepOrangeAccent.withOpacity(0.2),
                            onChanged: (value){
                              setState(() {
                                _value=value;
                              });
                            }),
                        Row(
                          children: [
                            myText(
                              text: "Only show people in this range",
                            ),
                            Expanded(child: Container()),
                            myToggleButton(),
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: _size * 0.01,
                ),
                myText(
                    text: "Verify a Phone Number to help secure your account",
                    color: Colors.grey),
                SizedBox(
                  height: _size * 0.03,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.15,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        myText(text: "Show"),
                        Row(
                          children: [
                            myText(text: "Womem", color: Colors.grey),
                            Expanded(child: Container()),
                            myToggleButton(),
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.15,
                    widget: Column(
                      children: [
                        Row(
                          children: [
                            myText(text: "Age Range", size: 20),
                            Expanded(child: Container()),
                            myText(
                                text: "18-100+",
                                color: Colors.deepOrange,
                                size: 18),
                          ],
                        ),
                        CustomRangeSlider(),
                        Row(
                          children: [
                            myText(
                              text: "Only show people in this range",
                            ),
                            Expanded(child: Container()),
                            myToggleButton(),
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: _size * 0.01,
                ),
                myText(
                    text: "Verify a Phone Number to help secure your account",
                    color: Colors.grey),
                SizedBox(
                  height: _size * 0.03,
                ),
                Row(
                  children: [
                    myText(
                        text: "Control Who You See",
                        size: 18,
                        fontweight: FontWeight.w400),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Container(
                      height: _size * 0.03,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)),
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: myText(
                            text: "Tinder Plus*",
                            size: 12,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.25,
                    padding: 0,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  myText(
                                      text: "Balanced Recommendation",
                                      size: 18,
                                      fontweight: FontWeight.w400),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.done,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: _size * 0.02,
                              ),
                              myText(
                                  text:
                                  "Verify a Phone Number to help secure your account",
                                  color: Colors.grey),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myText(
                                  text: "Recently Active",
                                  size: 18,
                                  fontweight: FontWeight.w400),
                              SizedBox(
                                height: _size * 0.02,
                              ),
                              myText(
                                  text:
                                  "Verify a Phone Number to help secure your account",
                                  color: Colors.grey),
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                Row(
                  children: [
                    myText(
                        text: "Control Who You See",
                        size: 18,
                        fontweight: FontWeight.w400),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Container(
                      height: _size * 0.03,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)),
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: myText(
                            text: "Tinder Plus*",
                            size: 12,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.25,
                    padding: 0,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  myText(
                                      text: "Standard",
                                      size: 18,
                                      fontweight: FontWeight.w400),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.done,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: _size * 0.02,
                              ),
                              myText(
                                  text:
                                  "Verify a Phone Number to help secure your account",
                                  color: Colors.grey),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myText(
                                  text: "Recently Active",
                                  size: 18,
                                  fontweight: FontWeight.w400),
                              SizedBox(
                                height: _size * 0.02,
                              ),
                              myText(
                                  text:
                                  "Verify a Phone Number to help secure your account",
                                  color: Colors.grey),
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Show me on Like",
                    size: 18,
                    fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.08,
                    widget: Row(
                      children: [
                        myText(text: "Show me on Like", size: 18),
                        Expanded(child: Container()),
                        myToggleButton(),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.01,
                ),
                myText(
                    text: "Verify a Phone Number to help secure your account",
                    color: Colors.grey),
                SizedBox(
                  height: _size * 0.03,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.08,
                    widget: myText(text: "Block Contacts", size: 18)),

                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Show me on Like",
                    size: 18,
                    fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.08,
                    widget: Row(
                      children: [
                        myText(text: "Autoplay Videos", size: 18),
                        Expanded(child: Container()),
                        myText(text: ">", size: 20, color: Colors.grey)
                      ],
                    )),

                SizedBox(
                  height: _size * 0.04,
                ),

                customcontainer(
                    context: context,
                    height: _size * 0.18,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        myText(text: "Web Profile", color: Colors.black54),
                        SizedBox(
                          height: _size * 0.01,
                        ),
                        Row(
                          children: [
                            myText(text: "Autoplay Videos", size: 18),
                            Expanded(child: Container()),
                            myText(text: ">", size: 20, color: Colors.grey)
                          ],
                        ),
                        SizedBox(
                          height: _size * 0.03,
                        ),
                        myText(
                            text:
                            "Verify a Phone Number to help secure your account",
                            color: Colors.grey),
                      ],
                    )),

                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Q&A Events", size: 18, fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.16,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        myText(text: "Manage Q&A Events", size: 18),
                        Row(
                          children: [
                            myText(text: "Setting", size: 18),
                            Expanded(child: Container()),
                            myText(text: ">", size: 20, color: Colors.grey)
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Top Picks", size: 18, fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.16,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        myText(text: "Manage Top Picks", size: 18),
                        Row(
                          children: [
                            myText(text: "Setting", size: 18),
                            Expanded(child: Container()),
                            myText(text: ">", size: 20, color: Colors.grey)
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Read Receipts",
                    size: 18,
                    fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.16,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        myText(text: "Manage Read Receipts", size: 18),
                        Row(
                          children: [
                            myText(text: "Setting", size: 18),
                            Expanded(child: Container()),
                            myText(text: ">", size: 20, color: Colors.grey)
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Swipe Surge", size: 18, fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.16,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        myText(text: "Manage Swipe Surge", size: 18),
                        Row(
                          children: [
                            myText(text: "Setting", size: 18),
                            Expanded(child: Container()),
                            myText(text: ">", size: 20, color: Colors.grey)
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Activity Status",
                    size: 18,
                    fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.16,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        myText(text: "Recently Activity Status", size: 18),
                        Row(
                          children: [
                            myText(text: "Setting", size: 18),
                            Expanded(child: Container()),
                            myText(text: ">", size: 20, color: Colors.grey)
                          ],
                        ),
                      ],
                    )),

                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Activity Status",
                    size: 18,
                    fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.18,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        myText(
                            text: "Notification",
                            size: 16,
                            fontweight: FontWeight.w400),
                        myText(
                            text: "Email",
                            size: 16,
                            fontweight: FontWeight.w400),
                        myText(
                            text: "Push Notification",
                            size: 16,
                            fontweight: FontWeight.w400),
                        myText(
                            text: "Team Like",
                            size: 16,
                            fontweight: FontWeight.w400),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),

                customcontainer(
                    context: context,
                    height: _size * 0.18,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            myText(
                                text: "Show Distance in",
                                size: 18,
                                color: Colors.red),
                            Expanded(child: Container()),
                            myText(text: "Mi.", size: 20, color: Colors.red),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: _size * 0.06,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: myText(text: "Km.", color: Colors.white),
                              ),
                            ),
                            Container(
                              height: _size * 0.06,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: myText(text: "Mi.", color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Payment Account",
                    size: 18,
                    fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.18,
                    padding: 0,
                    widget: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              myText(
                                  text: "Standard",
                                  size: 18,
                                  fontweight: FontWeight.w400),
                              Expanded(child: Container()),
                              myText(text: ">", size: 20, color: Colors.grey)
                            ],
                          ),
                          Divider(
                            height: 1,
                            thickness: 2,
                          ),
                          Row(
                            children: [
                              myText(
                                  text: "Standard",
                                  size: 18,
                                  fontweight: FontWeight.w400),
                              Expanded(child: Container()),
                              myText(text: ">", size: 20, color: Colors.grey)
                            ],
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Contact Us", size: 18, fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.08,
                    widget: Row(
                      children: [
                        myText(
                            text: "Help & Support",
                            size: 18,
                            fontweight: FontWeight.w400),
                        Expanded(child: Container()),
                      ],
                    )),

                SizedBox(
                  height: _size * 0.03,
                ),
                myText(
                    text: "Community", size: 18, fontweight: FontWeight.w400),
                SizedBox(
                  height: _size * 0.01,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.2,
                    padding: 10,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            myText(
                                text: "Community Guidelines",
                                size: 18,
                                fontweight: FontWeight.w400),
                            Expanded(child: Container()),
                          ],
                        ),
                        Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            myText(
                                text: "Safety Tips",
                                size: 18,
                                fontweight: FontWeight.w400),
                            Expanded(child: Container()),
                          ],
                        ),
                        Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            myText(
                                text: "Safety Center",
                                size: 18,
                                fontweight: FontWeight.w400),
                            Expanded(child: Container()),
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.03,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.08,
                    widget: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        myText(
                            text: "Share Tinder",
                            size: 18,
                            fontweight: FontWeight.w400),
                      ],
                    )),

                SizedBox(
                  height: _size * 0.03,
                ),

                customcontainer(
                    context: context,
                    height: _size * 0.26,
                    padding: 10,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            myText(
                              text: "Privacy",
                              size: 18,
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            myText(
                                text: "Cookies Policy",
                                size: 18,
                                fontweight: FontWeight.w400),
                            Expanded(child: Container()),
                          ],
                        ),
                        Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            myText(
                                text: "Privacy Policy",
                                size: 18,
                                fontweight: FontWeight.w400),
                            Expanded(child: Container()),
                          ],
                        ),
                        Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            myText(
                                text: "Privacy preferences",
                                size: 18,
                                fontweight: FontWeight.w400),
                            Expanded(child: Container()),
                          ],
                        ),
                      ],
                    )),

                SizedBox(
                  height: _size * 0.05,
                ),
                customcontainer(
                    context: context,
                    height: _size * 0.2,
                    padding: 10,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            myText(
                              text: "Legal",
                              size: 18,
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            myText(
                                text: "Licence",
                                size: 18,
                                fontweight: FontWeight.w400),
                            Expanded(child: Container()),
                          ],
                        ),
                        Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            myText(
                                text: "Term Of Services",
                                size: 18,
                                fontweight: FontWeight.w400),
                            Expanded(child: Container()),
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: _size * 0.05,
                ),
                GestureDetector(
                  onTap: ()=> Get.to(LoginScreen()),
                  child: Container(
                    height: _size * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 0.1,color: Colors.grey)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: myText(text: "Log Out",color: Colors.red)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customcontainer({
    required BuildContext context,
    required double height,
    required Widget widget,
    double padding = 10,
  }) {
    return Container(
      height: height,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(offset: Offset(0, 0), blurRadius: 0.1, color: Colors.grey)
          ]),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: widget,
      ),
    );
  }
}
