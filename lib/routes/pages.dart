import 'package:get/get.dart';
import 'package:simblue/modules/login/page.dart';
import 'package:simblue/modules/root/binding.dart';
import 'package:simblue/modules/root/page.dart';

import '../modules/login/binding.dart';

part 'routes.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.home,
      page: () => RootPage(),
      binding: RootBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
