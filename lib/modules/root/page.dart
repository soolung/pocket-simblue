import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simblue/modules/root/controller.dart';
import 'package:simblue/shared/colors.dart';

class RootPage extends GetView<RootController> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => controller.pages.elementAt(controller.selectedIndex.value)),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
            child: Align(
                alignment: const Alignment(0.0, 1.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Container(
                    color: Palette.monoWhite,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Obx(() => BottomNavigationBar(
                            type: BottomNavigationBarType.fixed,
                            backgroundColor: Palette.monoWhite,
                            currentIndex: controller.selectedIndex.value,
                            selectedItemColor: Palette.primary400,
                            unselectedItemColor: Palette.gray400,
                            showUnselectedLabels: true,
                            onTap: controller.changeIndex,
                            elevation: 0,
                            items: const <BottomNavigationBarItem>[
                              BottomNavigationBarItem(
                                icon: Icon(Icons.home_outlined),
                                label: '홈',
                              ),
                              BottomNavigationBarItem(
                                icon: Icon(Icons.panorama_fish_eye_outlined),
                                label: '둘러보기',
                              ),
                              BottomNavigationBarItem(
                                icon: Icon(Icons.bookmark_outline),
                                label: '기록보기',
                              ),
                              BottomNavigationBarItem(
                                icon: Icon(Icons.person_outline),
                                label: '프로필',
                              ),
                            ],
                          )),
                    ),
                  ),
                )),
          )
        ],
      ),
      bottomNavigationBar: const SizedBox(
        height: 0,
        child: Placeholder(),
      ),
    );
  }
}
