import 'package:get/get.dart';
import 'package:simblue/modules/home/controller.dart';
import 'package:simblue/modules/profile/controller.dart';
import 'package:simblue/modules/record/controller.dart';
import 'package:simblue/modules/root/controller.dart';

class RootBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<RecordController>(() => RecordController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}