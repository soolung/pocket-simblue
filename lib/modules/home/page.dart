import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simblue/modules/home/controller.dart';
import 'package:simblue/widgets/home/application.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 16),
                child: CarouselSlider(
                    items: controller.bannerList
                        .map(
                          (e) => ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: Image.network(
                                e,
                                fit: BoxFit.cover,
                              )),
                        )
                        .toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                      viewportFraction: 0.85,
                      height: 118,
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 24, right: 24),
              child: Column(
                  children: controller.applicationList
                      .map((a) => ApplicationWidget(
                            emoji: a.emoji,
                            title: a.title,
                            description: a.description,
                            status: a.status,
                            startDate: a.startDate,
                            endDate: a.endDate,
                          ))
                      .toList()),
            )
          ],
        ));
  }
}
