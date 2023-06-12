import 'package:flutter/material.dart';
import 'package:simblue/utils/datetime.dart';
import 'package:simblue/widgets/tag.dart';

import '../models/tag.dart';
import '../shared/colors.dart';

class ApplicationWidget extends StatelessWidget {
  final String emoji;
  final String title;
  final String description;
  final String status;
  final DateTime? startDate;
  final DateTime? endDate;

  const ApplicationWidget({
    Key? key,
    required this.emoji,
    required this.title,
    required this.description,
    required this.status,
    this.startDate,
    this.endDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: const BoxDecoration(
            color: Palette.monoWhite,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Text(emoji,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.apply(fontFamily: 'Tossface')),
                  const SizedBox(width: 4),
                  Text(title, style: Theme.of(context).textTheme.headlineSmall),
                ]),
                const SizedBox(height: 4),
                Text(description,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.apply(color: Palette.gray600)),
                const SizedBox(height: 8),
                Row(
                  children:
                      generateTags().map((e) => TagWidget(tag: e)).toList(),
                )
              ],
            )),
      ),
    );
  }

  List<Tag> generateTags() {
    List<Tag> tags = [];

    if (status == "ALWAYS") {
      tags.add(Tag.green("상시"));
    } else if (status == "DONE") {
      tags.add(Tag.red("마감"));
    } else if (status == "NOT_STARTED") {
      tags.add(Tag.red("시작 전"));
      tags.add(Tag.red("${DateTimeFormatter.after(startDate!)} 시작"));
    } else {
      tags.add(Tag.green("${DateTimeFormatter.after(endDate!)} 종료"));
    }

    return tags;
  }
}
