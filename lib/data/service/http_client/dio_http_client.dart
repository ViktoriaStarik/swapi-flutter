import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:swapiflutter/data/service/http_client/i_http_client.dart';

class DioHttpClient implements IHttpClient {
  late Dio _dio;

  DioHttpClient() {
    _dio = Dio();
  }

  @override
  Future get(
      {required String url, Map<String, dynamic>? queryParameters}) async {
    try {
      Response response = await _dio.get(url, queryParameters: queryParameters);
      var data = response.data;
      int statusCode = response.statusCode ?? 0;
      if (statusCode == 200) {
        return data;
      }
      return data;
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Future post({required String url, Map<String, dynamic>? body}) async {
    try {
      Response response = await _dio.post(url, data: jsonEncode(body));
      var data = response.data;
      int statusCode = response.statusCode ?? 0;
      if (statusCode == 200) {
        return data;
      }
      return data;
    } catch (e) {
      return e.toString();
    }
  }
}
