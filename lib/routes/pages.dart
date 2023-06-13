import 'package:get/get.dart';
import 'package:simblue/modules/home/binding.dart';
import 'package:simblue/modules/home/page.dart';
import 'package:simblue/modules/login/page.dart';
import 'package:simblue/modules/look/binding.dart';
import 'package:simblue/modules/look/page.dart';
import 'package:simblue/modules/profile/binding.dart';
import 'package:simblue/modules/profile/page.dart';
import 'package:simblue/modules/record/binding.dart';
import 'package:simblue/modules/record/page.dart';
import 'package:simblue/modules/root/binding.dart';
import 'package:simblue/modules/root/page.dart';

import '../modules/login/binding.dart';

part 'routes.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.root,
      page: () => const RootPage(),
      binding: RootBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.look,
      page: () => const LookPage(),
      binding: LookBinding(),
    ),
    GetPage(
      name: Routes.record,
      page: () => const RecordPage(),
      binding: RecordBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
  ];
}
