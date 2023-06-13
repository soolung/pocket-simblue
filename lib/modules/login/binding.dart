import 'package:get/get.dart';
import 'package:simblue/modules/login/controller.dart';

class LoginBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}