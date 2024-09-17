import 'dio_service.dart';

class ApiService {
  static String baseUrl = "http://coffeeapp.somee.com/api/Coffee";

  static Future<Map<String, dynamic>> getCoffees({
    required String endpoint,
  }) async {
    final response = await DioService.get(baseUrl + endpoint);
    return response.data;
  }
}
