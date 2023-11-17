import 'dart:convert';

import 'package:budz_test/src/domain/services/http_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class DioServices extends HttpServices {
  final Dio dio;
  // All things related to DioAdapter is for testing purpose only
  late DioAdapter adapter;

  final bool isMock;

  final String apiBaseUrl = 'https:/placeholder.com/v1';

  DioServices({required this.dio, this.isMock = true});

  @override
  Future<void> init() async {
    dio.options.baseUrl = apiBaseUrl;
    dio.options.headers = {
      'Content-Type': 'application/json',
    };

    if (isMock) {
      final String data =
          await rootBundle.loadString('tests/mocks/user_mock.json');

      adapter = DioAdapter(dio: dio);

      adapter.onGet(
        '/users/1',
        (request) => request.reply(200, jsonDecode(data)),
      );
    }
  }

  @override
  Future<Response> get(
    String url, {
    Map<String, dynamic> params = const {},
  }) async {
    return await dio.get(
      url,
      queryParameters: params,
    );
  }

  @override
  Future<Response> post(String url, {Map<String, dynamic>? body}) async {
    return await dio.post(
      url,
      data: body,
    );
  }

  @override
  Future<Response> put(String url, {Map<String, dynamic>? body}) {
    return dio.put(
      url,
      data: body,
    );
  }

  @override
  Future delete(String url) {
    return dio.delete(url);
  }
}
