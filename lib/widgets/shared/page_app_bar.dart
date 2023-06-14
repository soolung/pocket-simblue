import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/colors.dart';

class TitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const TitleAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.monoWhite,
      elevation: 0,
      centerTitle: false,
      title: Row(
        children: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios_new,
                  color: Palette.monoBlack, size: 20.0)),
          Text(title, style: Theme.of(context).textTheme.labelLarge),
        ],
      ),
      automaticallyImplyLeading: false,
      titleSpacing: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
