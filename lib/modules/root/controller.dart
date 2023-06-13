import 'package:get/get.dart';

class RootController extends GetxController {
  static RootController get to => Get.find();

  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex(index);
  }
}
