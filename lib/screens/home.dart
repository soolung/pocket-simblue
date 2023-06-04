import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:simblue/widgets/application.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _bannerList = [
    "https://media.discordapp.net/attachments/1014696258293739533/1051118704504606772/Layer-4.jpg",
    "https://media.discordapp.net/attachments/1014696258293739533/1051118704504606772/Layer-4.jpg",
    "https://media.discordapp.net/attachments/1014696258293739533/1051118704504606772/Layer-4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 16),
            child: CarouselSlider(
                items: _bannerList
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
            children: [
              ApplicationWidget(
                emoji: "😎",
                title: "조기출근",
                description: "아아아 일찍가기싫어",
                status: "NOT_STARTED",
                endDate: DateTime(2023, 6, 4, 23, 23, 0, 0),
                startDate: DateTime(2023, 6, 4, 23, 23, 0, 0),
              ),
              ApplicationWidget(
                emoji: "❤️",
                title: "사길사람ㅋㅋ",
                description: "선착순2명",
                status: "IN_PROGRESS",
                endDate: DateTime(2023, 8, 4, 23, 23, 0, 0),
                startDate: DateTime(2023, 6, 4, 23, 23, 0, 0),
              ),
              const ApplicationWidget(
                emoji: "🍚",
                title: "밥줄사람",
                description: "고기조아함ㅋㅋ",
                status: "ALWAYS",
              ),
            ],
          ),
        )
      ],
    );
  }
}
