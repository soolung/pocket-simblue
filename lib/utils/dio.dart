import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Dio _dio = Dio();

Dio get dio => _dio;

class DioUtil {
  static Future init() async {
    dio.options.baseUrl = dotenv.env['BASE_URL']!;
    dio.options.connectTimeout = const Duration(milliseconds: 5000);
    dio.options.sendTimeout = const Duration(milliseconds: 5000);
    dio.options.receiveTimeout = const Duration(milliseconds: 3000);
  }
}
