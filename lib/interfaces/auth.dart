import 'package:simblue/models/token.dart';
import 'package:get/get.dart';

import '../providers/token_manager.dart';
import '../utils/dio.dart';
import '../routes/pages.dart';

AuthApi _authApi = AuthApi();

AuthApi get authApi => _authApi;

class AuthApi {
  final tokenManagerProvider = TokenManagerProvider.instance;

  Future<bool> hasToken() async {
    final token = await tokenManagerProvider.manager.getToken();
    return token != null;
  }

  Future<void> login(String email, String password) async {
    final token = await _login({"email": email, "password": password});
    await tokenManagerProvider.manager.setToken(token);
    Get.offAllNamed(Routes.home);
  }

  Future<Token> _login(data) async {
    var response = await dio.post("/auth", data: data);
    return Token.fromJson(response.data);
  }
}
