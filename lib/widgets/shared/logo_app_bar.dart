import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import 'logo.dart';

class LogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;

  const LogoAppBar({
    Key? key,
    this.color = Palette.gray50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 24,
      title: const Logo(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
