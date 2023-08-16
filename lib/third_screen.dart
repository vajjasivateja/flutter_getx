import 'package:flutter/material.dart';
import 'package:flutter_getx/second_screen.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third screen"),),
      body: Center(
        child: InkWell(
            onTap: () {
              // Navigator.pop(context);
              Get.back();
              Get.back();
            },
            child: Text("Go to Home screen")),
      ),
    );
  }
}
