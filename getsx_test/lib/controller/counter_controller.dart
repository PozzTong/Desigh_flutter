import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  RxInt number = 0.obs;
  inCrementNumber() async {
    number.value += 1;
    update();
  }

  deCrementNumber() async {
    number.value -= 1;
    update();
  }
}
