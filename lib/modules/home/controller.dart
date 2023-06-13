import 'package:get/get.dart';
import 'package:simblue/interfaces/application.dart';
import 'package:simblue/models/application.dart';


class HomeController extends GetxController {
  static HomeController get to => Get.find();

  RxList<Application> applicationList = <Application>[].obs;

  final bannerList = <String>[
    "https://media.discordapp.net/attachments/1014696258293739533/1051118704504606772/Layer-4.jpg",
    "https://media.discordapp.net/attachments/1014696258293739533/1051118704504606772/Layer-4.jpg",
    "https://media.discordapp.net/attachments/1014696258293739533/1051118704504606772/Layer-4.jpg"
  ];

  void fetchList() async {
    var list = await applicationApi.getPagingApplication();
    applicationList.value = list;
  }

  @override
  void onInit() {
    fetchList();
    super.onInit();
  }
}
