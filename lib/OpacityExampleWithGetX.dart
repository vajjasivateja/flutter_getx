import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'OpacityController.dart';

class OpacityExampleWithGetX extends StatefulWidget {
  const OpacityExampleWithGetX({Key? key}) : super(key: key);

  @override
  State<OpacityExampleWithGetX> createState() => _OpacityExampleWithGetXState();
}

class _OpacityExampleWithGetXState extends State<OpacityExampleWithGetX> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    OpacityController controller = Get.put(OpacityController());
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Obx(() => Container(
                  width: 300,
                  height: 300,
                  color: Colors.red.withOpacity(controller.opacity.value),
                )),
            Obx(() => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  print("rebuild slider");
                  controller.setOpacity(value);
                }))
          ],
        ),
      ),
    );
  }
}
