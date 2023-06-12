import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simblue/routes/pages.dart';
import 'package:simblue/theme/simblue_theme.dart';

void main() {
  runApp(GetMaterialApp(
    title: '심청이',
    theme: SimblueThemeData.lightThemeData,
    initialRoute: Routes.home,
    getPages: Pages.pages,
  ));
}
