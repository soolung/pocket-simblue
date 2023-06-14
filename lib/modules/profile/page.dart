import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simblue/modules/profile/controller.dart';
import 'package:simblue/widgets/profile/profile.dart';
import 'package:simblue/widgets/profile/setting.dart';
import 'package:simblue/widgets/shared/empty_app_bar.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: EmptyAppBar(
          bottom: Padding(
            padding: const EdgeInsets.all(16),
            child: Obx(() => ProfileWidget(controller.user.value)),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            SettingWidget(title: "계정", argumentList: [
              SettingArgument(
                  emoji: "🤦‍♀️",
                  text: "로그아웃",
                  onTap: () => controller.logout()
              )
            ]),
          ],
        ));
  }
}
