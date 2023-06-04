import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
    return Stack(
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
      ],
    );
  }
}
