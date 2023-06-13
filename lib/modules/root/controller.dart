import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:simblue/modules/home/page.dart';
import 'package:simblue/modules/look/page.dart';
import 'package:simblue/modules/profile/page.dart';
import 'package:simblue/modules/record/page.dart';


class RootController extends GetxController {
  static RootController get to => Get.find();

  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex(index);
  }

  var pages = <Widget>[
    HomePage(),
    LookPage(),
    RecordPage(),
    ProfilePage(),
  ];
}
