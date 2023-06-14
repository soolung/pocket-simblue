import 'package:flutter/material.dart';
import 'package:simblue/theme/colors.dart';

class SettingWidget extends StatelessWidget {
  final String title;
  final List<SettingArgument> argumentList;

  const SettingWidget(
      {Key? key, required this.title, required this.argumentList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Palette.monoWhite,
            border:
                Border(bottom: BorderSide(color: Palette.gray100, width: 1))),
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title, style: Theme.of(context).textTheme.labelSmall),
              ...argumentList
                  .map((e) => InkWell(
                        onTap: e.onTap,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: [
                              Text(e.emoji,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.apply(fontFamily: "Tossface")),
                              const SizedBox(width: 8.0),
                              Text(e.text,
                                  style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                        ),
                      ))
                  .toList()
            ])));
  }
}

class SettingArgument {
  final String emoji;
  final String text;
  final Function() onTap;

  const SettingArgument({
    required this.emoji,
    required this.text,
    required this.onTap,
  });
}
