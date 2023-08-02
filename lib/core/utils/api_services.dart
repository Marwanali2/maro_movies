import 'package:dio/dio.dart';

String apiKey = "76a6962876fcdd43ecb3e27b5db2e68e";

class ApiServices {
  final String _baseUrl = "https://api.themoviedb.org/3/trending";

  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl/$endPoint/day?api_key=$apiKey');
    return response.data;
  }
}
