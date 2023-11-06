import 'dart:io';

import 'package:get/get.dart';

enum Method { POST, GET, PUT, DELETE, PATCH }

class ApiService extends GetConnect implements GetxService {
  final String baseUrl;
  late Map<String, String> _headers;

  ApiService({required this.baseUrl}) {
    _headers = {
      'Content-Type': 'application/json',
    };
  }

  Future<dynamic> reqst(
      {required String url,
      Method? method = Method.POST,
      Map<String, dynamic>? params}) async {
    Response response;
    try {
      if (method == Method.POST) {
        response = await post(url, params, headers: _headers);
      } else if (method == Method.DELETE) {
        response = await delete(url, headers: _headers);
      } else if (method == Method.PATCH) {
        response = await patch(url, params, headers: _headers);
      } else {
        response = await get(url, headers: _headers);
      }

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else {
        throw Exception("Something Went Wrong");
      }
    } on SocketException catch (e) {
      throw Exception("No Internet Connection");
    } on FormatException {
      throw Exception("Bad Response Format!");
    } catch (e) {
      throw Exception("Something Went Wrong");
    }
  }

  updateHeaders() {
    _headers['Authorization'] = '';
  }
}
