import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/actions_repository.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://api.spacetraders.io/v2',
    headers: {'Content-Type': 'application/json'},
  ),
);

InterceptorsWrapper networkInterceptor = InterceptorsWrapper(
  onRequest: (options, handler) async {
    if (options.path != '/register') {
      Map newHeaders = options.headers;
      String token = await ActionsRepository().getToken();
      newHeaders.addEntries({'Authorization': 'Bearer $token'}.entries);
    }
    return handler.next(options);
  },
  onResponse: (response, handler) {
    debugPrint('[${response.requestOptions.path}] => [${response.statusCode}]');
    return handler.next(response);
  },
  onError: (error, handler) {
    debugPrint(
        'Error [${error.response?.requestOptions.path}] => Code [${error.response?.statusCode}] => [${error.message}]');

    return handler.next(error);
  },
);
