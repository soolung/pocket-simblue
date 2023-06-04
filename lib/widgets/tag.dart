import 'package:flutter/material.dart';
import 'package:simblue/models/tag.dart';

class TagWidget extends StatelessWidget {
  final Tag tag;

  const TagWidget({
    Key? key,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: tag.color,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            tag.text,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.apply(color: tag.textColor),
          ),
        ),
      ),
    );
  }
}
