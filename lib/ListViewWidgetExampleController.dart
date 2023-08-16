import 'package:get/get.dart';

class ListViewWidgetExampleController extends GetxController {
  RxList<String> fruits = ["Orange", "Apple", "banana", "mangoes", "grapes"].obs;
  RxList selectedFruits = [].obs;

  addOrRemoveSelectedFruits(String fruitName) {
    if (selectedFruits.contains(fruitName)) {
      selectedFruits.remove(fruitName);
    } else {
      selectedFruits.add(fruitName);
    }
  }
}
