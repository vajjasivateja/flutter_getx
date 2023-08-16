import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ListViewWidgetExampleController.dart';

class ListViewWidgetExampleWithGetX extends StatefulWidget {
  const ListViewWidgetExampleWithGetX({Key? key}) : super(key: key);

  @override
  State<ListViewWidgetExampleWithGetX> createState() => _ListViewWidgetExampleWithGetXState();
}

class _ListViewWidgetExampleWithGetXState extends State<ListViewWidgetExampleWithGetX> {
  ListViewWidgetExampleController controller = Get.put(ListViewWidgetExampleController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: controller.fruits.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Obx(
                () => ListTile(
                  onTap: () {
                    controller.addOrRemoveSelectedFruits(controller.fruits[index]);
                  },
                  title: Text(controller.fruits[index]),
                  trailing: Icon(controller.selectedFruits.contains(controller.fruits[index]) ? Icons.favorite : Icons.favorite_border_outlined),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
