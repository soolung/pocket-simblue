import 'package:get/get.dart';
import 'package:simblue/interfaces/application.dart';
import 'package:simblue/models/application.dart';

class LookController extends GetxController {
  static LookController get to => Get.find();

  final RxString selectedType = "마감 임박".obs;

  final RxList<Application> applicationList = <Application>[].obs;

  final tabList = <String>["마감 임박", "최신", "상시"];

  final applicationTypeMap = <String, String> {
    "마감 임박": "deadline",
    "최신": "latest",
    "상시": "always"
  };

  void changeType(String type) {
    selectedType.value = type;
    fetchList();
  }

  void fetchList() async {
    var list = await applicationApi.getApplication(applicationTypeMap[selectedType.value]!);
    applicationList.value = list;
  }

  @override
  void onInit() {
    fetchList();
    super.onInit();
  }
}
