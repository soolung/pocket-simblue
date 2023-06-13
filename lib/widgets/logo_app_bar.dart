import 'package:flutter/material.dart';

import '../shared/colors.dart';
import 'logo.dart';

class LogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LogoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.gray50,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 24,
      title: const Logo(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
