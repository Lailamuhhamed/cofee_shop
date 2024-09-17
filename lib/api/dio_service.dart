import 'package:dio/dio.dart';

class DioService {
  DioService._();
  static final Dio _dio = Dio();

  static Future<Response> get(String url) async {
    return await _dio.get(url);
  }
}
