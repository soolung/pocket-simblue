import 'package:simblue/modules/home/controller.dart';
import 'package:simblue/modules/look/controller.dart';
import 'package:simblue/modules/profile/controller.dart';
import 'package:simblue/modules/record/controller.dart';
import 'package:simblue/modules/root/controller.dart';
import 'package:get/get.dart';

class RootBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<LookController>(() => LookController());
    Get.lazyPut<RecordController>(() => RecordController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}