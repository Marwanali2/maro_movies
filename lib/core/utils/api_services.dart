import 'package:dio/dio.dart';

String apiKey = "76a6962876fcdd43ecb3e27b5db2e68e";

class ApiServices {
  final String _baseUrl = "https://api.themoviedb.org/3";

  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl/$endPoint/day?api_key=$apiKey');
    return response.data;
  }

  Future<Map<String, dynamic>> getTopRated({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl/$endPoint?api_key=$apiKey');
    return response.data;
  }

  Future<Map<String, dynamic>> getGenres(
      {required String endPoint, required int genreId}) async {
    var response = await _dio
        .get('$_baseUrl/$endPoint?api_key=$apiKey&with_genres=$genreId');
    return response.data;
  }
}
