import 'package:flutter/material.dart';
import 'package:flutter_getx/third_screen.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  var name;

  SecondScreen({Key? key, this.name = ""}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen" + Get.arguments[0]),
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => ThirdScreen());
            },
            child: Text("Second Screen")),
      ),
    );
  }
}
