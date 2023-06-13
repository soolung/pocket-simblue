import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:simblue/routes/pages.dart';
import 'package:simblue/theme/simblue_theme.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(GetMaterialApp(
    title: '심청이',
    theme: SimblueThemeData.lightThemeData,
    initialRoute: Routes.home,
    getPages: Pages.pages,
  ));
}
