import 'package:get/get.dart';
import 'package:simblue/modules/look/controller.dart';

class LookBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<LookController>(() => LookController());
  }
}
