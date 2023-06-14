import 'package:dio/dio.dart';
import 'package:simblue/providers/token_manager.dart';

class AccessTokenInterceptor extends Interceptor {
  AccessTokenInterceptor({TokenManagerProvider? tokenManagerProvider})
      : _tokenManagerProvider =
            tokenManagerProvider ?? TokenManagerProvider.instance;

  final TokenManagerProvider _tokenManagerProvider;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _tokenManagerProvider.manager.getToken();

    if (token == null) {
      throw Exception("Token is null");
    }

    options.headers["Authorization"] = "Bearer ${token.accessToken}";
    handler.next(options);
  }
}
