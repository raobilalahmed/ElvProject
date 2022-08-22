import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:like/AppModule/loginRegistration/Add_photo.dart';
import 'package:get/get.dart';

import '../utils/Components/backButton.dart';
import '../utils/Components/custom_colors.dart';
import '../utils/Components/custom_text.dart';
//
// class SelectedScreen extends StatefulWidget {
//   const SelectedScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SelectedScreen> createState() => _SelectedScreenState();
// }
//
// class _SelectedScreenState extends State<SelectedScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           backgroundColor: Colors.white,
//           body: imagesMulti == null
//               ? Padding(
//             padding: const EdgeInsets.only(top: 10.0),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     backButton(),
//                     HeadingText(title: "Selected Source")
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Divider(
//                   height: 2,
//                   thickness: 1.2,
//                   color: Colors.grey,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                    // takePhoto(ImageSource.camera);
//                   },
//                   child: image_text("Camera",
//                       'asserts/images/28d21ef32bb210fae697ba13eabce458eed1a0e4.png'),
//                 ),
//                 Divider(
//                   height: 2,
//                   thickness: 1,
//                   color: Colors.grey,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectImages();
//                      Get.to(AddPhoto(image: imagesMulti,));
//                     });
//                   },
//                   child: image_text("Gallery",
//                       'asserts/images/a4ad8f1b9ab08f498227571dd691dea6250439c6.png'),
//                 ),
//                 Divider(
//                   height: 2,
//                   thickness: 0.4,
//                   color: Colors.grey,
//                 ),
//               ],
//             ),
//           )
//               :
//           // : Container(
//           //     height: 80,
//           //     width: 90,
//           //     child: Image.file(
//           //       selectedimg!,
//           //       fit: BoxFit.cover,
//           //     ),
//           //   ),
//           null
//
//       ),
//     );
//   }
//
//   Padding image_text(String title, String image) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Row(
//         children: [
//           Container(
//             height: 60,
//             width: 60,
//             decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Image(image: AssetImage(image)),
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           SimpleText(title: title, color: CustomColor.primaryColor),
//         ],
//       ),
//     );
//   }
// }