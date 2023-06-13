import 'package:get/get.dart';
import 'package:simblue/modules/profile/controller.dart';

class ProfileBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
