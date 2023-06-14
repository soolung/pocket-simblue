import 'package:get/get.dart';
import 'package:simblue/interfaces/user.dart';
import 'package:simblue/models/user.dart';
import 'package:simblue/providers/token_manager.dart';
import 'package:simblue/routes/pages.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();

  final tokenManagerProvider = TokenManagerProvider.instance;
  Rx<User> user = User(name: "", email: "").obs;

  void logout() {
    tokenManagerProvider.manager.clear();
    Get.offAllNamed(Routes.login);
  }

  void fetchUser() async {
    var user = await userApi.getUser();
    this.user.value = user;
  }

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }
}
