import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 10.obs;

  incrementCounter() {
    counter.value++;

  }
}
