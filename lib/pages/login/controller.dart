import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();

  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex(index);
  }
}
