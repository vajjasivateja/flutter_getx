import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'SwitchWidgetExampleController.dart';

class SwitchWidgetExampleWithGetX extends StatefulWidget {
  const SwitchWidgetExampleWithGetX({Key? key}) : super(key: key);

  @override
  State<SwitchWidgetExampleWithGetX> createState() => _SwitchWidgetExampleWithGetXState();
}

class _SwitchWidgetExampleWithGetXState extends State<SwitchWidgetExampleWithGetX> {
  SwitchWidgetExampleController controller = Get.put(SwitchWidgetExampleController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Notifications"),
            Obx(
              () => Switch(
                value: controller.notificationsState.value,
                onChanged: (value) {
                  controller.setNotificationStatus(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
