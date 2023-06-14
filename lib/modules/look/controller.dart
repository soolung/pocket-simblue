import 'package:get/get.dart';

class LookController extends GetxController {
  static LookController get to => Get.find();

  final RxInt selectedIndex = 0.obs;

  final tabList = <String>[
    "마감 임박",
    "최신",
    "상시"
  ];

  final applicationTypeList = <String>[
    "deadline",
    "latest",
    "always"
  ];

  void changeIndex(int index) {
    selectedIndex(index);
  }
}