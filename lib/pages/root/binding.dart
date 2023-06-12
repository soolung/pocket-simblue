import 'package:simblue/pages/root/controller.dart';
import 'package:get/get.dart';

class RootBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
  }
}