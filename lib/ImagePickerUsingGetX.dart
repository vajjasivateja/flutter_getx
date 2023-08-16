import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'ImagePickerController.dart';

class ImagePickerUsingGetX extends StatefulWidget {
  const ImagePickerUsingGetX({Key? key}) : super(key: key);

  @override
  State<ImagePickerUsingGetX> createState() => _ImagePickerUsingGetXState();
}

class _ImagePickerUsingGetXState extends State<ImagePickerUsingGetX> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              return Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: controller.imagePath.isNotEmpty ? FileImage(File(controller.imagePath.toString())) : null,
                      radius: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          controller.getImage();
                        },
                        child: const Text("Pick Image"))
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
