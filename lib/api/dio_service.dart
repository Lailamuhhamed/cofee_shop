import 'package:dio/dio.dart';

abstract class DioService {
  static final Dio _dio = Dio();

  static Future<Response> get(String url) async {
    return await _dio.get(url);
  }
}
