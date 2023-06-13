import 'package:dio/dio.dart';
import 'package:simblue/models/token.dart';

import '../providers/token_manager.dart';
import '../utils/dio.dart';

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
  }

  Future<Token> _login(data) async {
    Response response = await dio.post("/auth", data: data);
    return Token.fromJson(response.data);
  }
}
