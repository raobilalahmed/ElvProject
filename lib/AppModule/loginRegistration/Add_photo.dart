import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:like/AppModule/loginRegistration/enableLocation.dart';
import '../utils/Components/backButton.dart';
import '../utils/Components/customButton.dart';
import '../utils/Components/custom_colors.dart';
import '../utils/Components/custom_text.dart';

List<XFile> imagesMulti=[];
final multiPicker= ImagePicker();
class AddPhoto extends StatefulWidget {
  AddPhoto({Key? key, }) : super(key: key);

  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  //
  // Future selectImages() async {
  //   final List<XFile>? selectedImages = await multiPicker.pickMultiImage();
  //  setState(() {
  //    if (selectedImages!=null) {
  //      imagesMulti.addAll(selectedImages);
  //    }
  //    else{ print('No images Selected');}
  //  });
  // }
  void selectImagesRemove() {
    setState(() {
      if (imagesMulti.isNotEmpty) {
        imagesMulti.removeLast();
      }
      else{ print('No images Selected');}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              backButton(),
              Container(
                margin:
                EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeadingText(title: "Add Photos"),
                      const SizedBox(
                        height: 10,
                      ),
                      SimpleText(title: "Add at least 2 photos to continue"),
                      const SizedBox(
                        height: 50,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: (){
                                Get.to(SelectedScreen());
                               // selectImages();
                              },
                              child: GridView.builder(
                                controller: ScrollController(keepScrollOffset: false),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 3,
                                  childAspectRatio: 1 / 1.5,
                                ),
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
                                  return Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Container(
                                          height:
                                          MediaQuery.of(context).size.height * 0.20,
                                          width:
                                          MediaQuery.of(context).size.width * 0.20,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                         // child: imagesMulti!.isEmpty? Icon(Icons.add): Image.file(File(imagesMulti![index].path),fit: BoxFit.cover,)
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.red),
                                        child: IconButton(
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                Get.to(SelectedScreen());
                                              });
                                            }),
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Get.to(SelectedScreen());
                              },
                              child: GridView.builder(
                                controller: ScrollController(keepScrollOffset: false),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 3,
                                  childAspectRatio: 1 / 1.5,
                                ),
                                itemCount: imagesMulti.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Container(
                                          height:
                                          MediaQuery.of(context).size.height * 0.20,
                                          width:
                                          MediaQuery.of(context).size.width * 0.20,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                         child: imagesMulti==null? Container(): Image.file(File(imagesMulti[index].path),fit: BoxFit.cover,)
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.red),
                                        child: IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                selectImagesRemove();
                                               // Get.to(SelectedScreen());
                                              });
                                            }),
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        )
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      customButton(
                        text: "CONTINUE",
                        function: () {
                          Get.to(const EnableLocation());
                        },
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class SelectedScreen extends StatefulWidget {
  const SelectedScreen({Key? key}) : super(key: key);

  @override
  State<SelectedScreen> createState() => _SelectedScreenState();
}

class _SelectedScreenState extends State<SelectedScreen> {

  @override
  Widget build(BuildContext context) {


    Future selectImages() async {
      final List<XFile>? selectedImages = await multiPicker.pickMultiImage();
      setState(() {
        if (selectedImages!=null) {
          imagesMulti.addAll(selectedImages);
        }
        else{ print('No images Selected');}
      });
    }
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    backButton(),
                    HeadingText(title: "Selected Source")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 2,
                  thickness: 1.2,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectImages();
                      Get.to(AddPhoto());
                    });
                    // takePhoto(ImageSource.camera);
                  },
                  child: image_text("Camera",
                      'asserts/images/28d21ef32bb210fae697ba13eabce458eed1a0e4.png'),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectImages();
                      //Get.to(AddPhoto(image: imagesMulti,));
                    });
                    Get.to(AddPhoto());
                  },
                  child: image_text("Gallery",
                      'asserts/images/a4ad8f1b9ab08f498227571dd691dea6250439c6.png'),
                ),
                Divider(
                  height: 2,
                  thickness: 0.4,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        )
    );
  }

  Padding image_text(String title, String image) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(image)),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          SimpleText(title: title, color: CustomColor.primaryColor),
        ],
      ),
    );
  }
}