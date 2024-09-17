import 'dio_service.dart';

class ApiService {
  static String baseUrl = "http://coffeeapp.somee.com/api/Coffee";

  static Future<List<dynamic>> getCoffees({
    required String endpoint,
  }) async {
    final response = await DioService.get(baseUrl + endpoint);
    return response.data;
  }

  static Future<List<dynamic>> searchCoffee({
    required String productName,
  }) async {
    final response =
        await DioService.get('$baseUrl/Search?productName=$productName');
    return response.data;
  }
}
