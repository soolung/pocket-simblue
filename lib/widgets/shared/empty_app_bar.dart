import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;
  final Widget? bottom;

  const EmptyAppBar({
    Key? key,
    this.color = Palette.monoWhite,
    this.bottom
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 24,
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight),
        child: bottom ?? const SizedBox.shrink(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
