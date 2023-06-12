import 'package:get/get.dart';
import 'package:simblue/pages/login/view.dart';
import 'package:simblue/pages/root/binding.dart';
import 'package:simblue/pages/root/view.dart';

part 'routes.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.home,
      page: () => RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginView(),
    ),
  ];
}
