import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:simblue/interfaces/auth.dart';
import 'package:simblue/routes/pages.dart';
import 'package:simblue/theme/simblue_theme.dart';
import 'package:simblue/utils/dio.dart';

void main() async {
  init();
  bool loggedIn = await authApi.hasToken();
  runApp(GetMaterialApp(
    title: '심청이',
    theme: SimblueThemeData.lightThemeData,
    initialRoute: loggedIn ? Routes.home : Routes.login,
    getPages: Pages.pages,
  ));
}

void init() async {
  await dotenv.load(fileName: '.env');
  await DioUtil.init();
}
