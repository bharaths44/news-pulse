import 'dart:io';
import 'package:dio/dio.dart';

enum Method { POST, GET, PUT, DELETE, PATCH }

class ApiService {
  final String baseUrl;
  late Dio _dio;

  ApiService({required this.baseUrl}) {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
    _dio.options.headers = {
      'Content-Type': 'application/json',
    };
  }

  Future<dynamic> reqst({
    required String url,
    Method? method = Method.POST,
    Map<String, dynamic>? params,
  }) async {
    Response response;
    try {
      switch (method) {
        case Method.POST:
          response = await _dio.post(url, data: params);
          break;
        case Method.DELETE:
          response = await _dio.delete(url);
          break;
        case Method.PATCH:
          response = await _dio.patch(url, data: params);
          break;
        default:
          
          response = await _dio.get(url);
          
      }

      if (response.statusCode == 200) {
        
        return response;
      } else if (response.statusCode == 401) {
        
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
       
        throw Exception("Server Error");
      }
    } on DioException catch (e) {
      throw Exception("Dio Error: $e");
    } on SocketException catch (e) {
      throw Exception("No Internet Connection $e");
    } on FormatException catch (e) {
      throw Exception("Bad Response Format $e");
    } catch (e) {
      throw Exception("Something Went Wrong $e");
    }
  }

  void updateHeaders() {
    _dio.options.headers['Authorization'] = '';
  }
}
