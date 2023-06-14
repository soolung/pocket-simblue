import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:simblue/interceptors/token.dart';

Dio _dio = Dio();

Dio get dio => _dio;

Dio _authDio = Dio();

Dio get authDio => _authDio;

class DioUtil {
  static Future init() async {
    dio.options.baseUrl = dotenv.env['BASE_URL']!;
    dio.options.connectTimeout = const Duration(milliseconds: 5000);
    dio.options.sendTimeout = const Duration(milliseconds: 5000);
    dio.options.receiveTimeout = const Duration(milliseconds: 3000);

    authDio.options.baseUrl = dotenv.env['BASE_URL']!;
    authDio.options.connectTimeout = const Duration(milliseconds: 5000);
    authDio.options.sendTimeout = const Duration(milliseconds: 5000);
    authDio.options.receiveTimeout = const Duration(milliseconds: 3000);
    authDio.interceptors.add(AccessTokenInterceptor());
  }
}
