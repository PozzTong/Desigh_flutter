import 'package:get/get.dart';
import 'package:getsx_test/model/user_model.dart';

class UserController extends GetxController {
  RxList<UserModel> users = <UserModel>[].obs;
  void addUser(UserModel user) async {
    users.add(user);
    update();
  }
}
