import 'package:get/get.dart';

class SwitchWidgetExampleController extends GetxController {
  RxBool notificationsState = false.obs;

  setNotificationStatus(bool newState) {
    notificationsState.value = newState;
  }
}
