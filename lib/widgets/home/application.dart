import 'package:flutter/material.dart';
import 'package:simblue/models/application.dart';
import 'package:simblue/utils/datetime.dart';
import 'package:simblue/widgets/shared/tag.dart';

import '../../models/tag.dart';
import '../../theme/colors.dart';

class ApplicationWidget extends StatelessWidget {
  final Application application;
  final bool isListElement;

  const ApplicationWidget(this.application, {
    Key? key,
    this.isListElement = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isListElement ? EdgeInsets.zero : const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
            color: Palette.monoWhite,
            borderRadius: isListElement ? null : const BorderRadius.all(Radius.circular(16)),
            border: isListElement ? const Border(bottom: BorderSide(color: Palette.gray100, width: 1)) : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Text(application.emoji,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.apply(fontFamily: 'Tossface')),
                  const SizedBox(width: 4),
                  Text(application.title, style: Theme.of(context).textTheme.headlineSmall),
                ]),
                const SizedBox(height: 4),
                application.description.isNotEmpty ?  Text(application.description,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.apply(color: Palette.gray600)) : const SizedBox.shrink(),
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

    if (application.status == "ALWAYS") {
      tags.add(Tag.green("상시"));
    } else if (application.status == "DONE") {
      tags.add(Tag.red("마감"));
    } else if (application.status == "NOT_STARTED") {
      tags.add(Tag.red("시작 전"));
      tags.add(Tag.red("${DateTimeFormatter.after(application.startDate!)} 시작"));
    } else {
      tags.add(Tag.green("${DateTimeFormatter.after(application.endDate!)} 종료"));
    }

    return tags;
  }
}
