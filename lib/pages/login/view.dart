import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simblue/pages/login/controller.dart';
import 'package:simblue/widgets/logo_app_bar.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LogoAppBar(),
      body: Center(
        child: Text("Login"),
      ),
    );
  }
}
