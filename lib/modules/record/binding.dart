import 'package:get/get.dart';
import 'package:simblue/modules/record/controller.dart';

class RecordBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<RecordController>(() => RecordController());
  }
}
