import 'package:flutter/material.dart';
import 'package:simblue/theme/colors.dart';

class BorderBottomTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function() onTap;

  const BorderBottomTab({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: isSelected
              ? const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Palette.primary400,
                          width: 2,
                          style: BorderStyle.solid)))
              : null,
          child: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(text,
                  style: Theme.of(context).textTheme.labelMedium?.apply(
                      color:
                          isSelected ? Palette.primary400 : Palette.monoBlack))),
        ),
      ),
    );
  }
}
