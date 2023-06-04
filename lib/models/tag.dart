import 'dart:ui';

import 'package:simblue/shared/colors.dart';

class Tag {
  String text;
  Color color;
  Color textColor;

  Tag(this.text, this.color, this.textColor);

  static red(String text) {
    return Tag(text, Palette.red50, Palette.red400);
  }

  static green(String text) {
    return Tag(text, Palette.green50, Palette.green400);
  }
}
