import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/token.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://api.spacetraders.io/v2',
    headers: {'Content-Type': 'application/json'},
  ),
);

InterceptorsWrapper networkInterceptor = InterceptorsWrapper(
  onRequest: (options, handler) {
    Map newHeaders = options.headers;
    newHeaders.addEntries({
      'Authorization': 'Bearer ${token1 + token2 + token3 + token4 + token5}'
    }.entries);
    return handler.next(options);
  },
  onResponse: (response, handler) {
    debugPrint(
        '[${response.requestOptions.path}] => [${response.statusCode}] => Body [${response.data}]');
    return handler.next(response);
  },
  onError: (error, handler) {
    debugPrint(
        'Error [${error.response?.requestOptions.path}] => Code [${error.response?.statusCode}] => [${error.message}]');
    return handler.next(error);
  },
);
