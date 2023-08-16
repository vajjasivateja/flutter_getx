import 'package:flutter/material.dart';
import 'package:flutter_getx/counter_controller.dart';
import 'package:get/get.dart';

class CounterExampleWithGetX extends StatefulWidget {
  const CounterExampleWithGetX({Key? key}) : super(key: key);

  @override
  State<CounterExampleWithGetX> createState() => _CounterExampleWithGetXState();
}

class _CounterExampleWithGetXState extends State<CounterExampleWithGetX> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          return Text(controller.counter.toString(), style: const TextStyle(fontSize: 60));
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
