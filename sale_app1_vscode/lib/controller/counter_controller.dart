import 'package:get/get.dart';

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
