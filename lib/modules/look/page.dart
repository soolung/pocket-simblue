import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simblue/modules/look/controller.dart';
import 'package:simblue/shared/colors.dart';
import 'package:simblue/widgets/home/application.dart';
import 'package:simblue/widgets/shared/border_bottom_tab.dart';
import 'package:simblue/widgets/shared/title_app_bar.dart';

class LookPage extends GetView<LookController> {
  const LookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TitleAppBar(title: "둘러보기"),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            child: Column(children: [
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
                                    isSelected:
                                        controller.selectedType.value == e,
                                    onTap: () => controller.changeType(e)))
                                .toList(),
                          )))),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                  decoration: const BoxDecoration(
                    color: Palette.monoWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                                "총 ${controller.applicationList.length}개",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.apply(color: Palette.gray600)),
                          ),
                          ...controller.applicationList.map((a) {
                            return ApplicationWidget(a, isListElement: true);
                          }).toList(),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(height: 100)
            ])));
  }
}
