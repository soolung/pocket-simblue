import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:simblue/interfaces/auth.dart';
import 'package:simblue/modules/login/controller.dart';
import 'package:simblue/widgets/shared/logo_app_bar.dart';

import '../../shared/colors.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);
  var logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LogoAppBar(color: Palette.monoWhite),
      body: Center(
          child: Container(
        color: Palette.monoWhite,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 30.0,
          ),
          child: Column(
            children: [
              buildIconTextField(
                context,
                controller: controller.emailController,
                label: "@bssm.hs.kr",
                icon: const Icon(Icons.person_outlined),
              ),
              const SizedBox(height: 16.0),
              buildIconTextField(
                context,
                controller: controller.passwordController,
                label: "비밀번호를 입력하세요",
                icon: const Icon(Icons.lock_outlined),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => authApi.login(controller.email, controller.password),
                child: const Text("로그인"),
              ),
            ],
          ),
        ),
      )),
    );
  }

  TextField buildIconTextField(
    BuildContext context, {
    required TextEditingController controller,
    required String label,
    required Icon icon,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: InputDecoration(
        filled: true,
        fillColor: Palette.monoWhite,
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        labelStyle: (Theme.of(context).textTheme.bodySmall)
            ?.apply(color: Palette.gray700),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Palette.gray100, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Palette.gray100, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: icon,
        prefixIconColor: Palette.gray200,
      ),
      cursorColor: Palette.gray500,
      obscureText: obscureText,
    );
  }
}
