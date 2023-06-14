import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colors.dart';

class TitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? bottom;

  const TitleAppBar({Key? key, required this.title, this.bottom})
      : super(key: key);

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
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight),
        child: bottom ?? const SizedBox.shrink(),
      ),
      automaticallyImplyLeading: false,
      titleSpacing: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
