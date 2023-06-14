import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simblue/modules/look/controller.dart';
import 'package:simblue/shared/colors.dart';
import 'package:simblue/widgets/shared/page_app_bar.dart';
import 'package:simblue/widgets/shared/border_bottom_tab.dart';

class LookPage extends GetView<LookController> {
  const LookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TitleAppBar(title: "둘러보기"),
        body: Column(children: [
          Container(
            decoration: const BoxDecoration(
              color: Palette.monoWhite,
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Obx(() => Row(
                      children: controller.tabList
                          .map((e) => BorderBottomTab(
                                text: e,
                                isSelected: controller.tabList[
                                        controller.selectedIndex.value] ==
                                    e,
                                onTap: () => controller
                                    .changeIndex(controller.tabList.indexOf(e)),
                              ))
                          .toList(),
                    ))),
          ),
          const SizedBox(
            height: 4.0,
          )
        ]));
  }
}
