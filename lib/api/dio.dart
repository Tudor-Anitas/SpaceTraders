import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/actions_repository.dart';
import 'package:space_traders/api/local_storage.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://api.spacetraders.io/v2',
    headers: {'Content-Type': 'application/json'},
  ),
);

InterceptorsWrapper networkInterceptor = InterceptorsWrapper(
  onRequest: (options, handler) async {
    Map newHeaders = options.headers;
    String agentToken = await LocalStorage().getAgentToken();
    String appToken = await ActionsRepository().getToken();
    String token = options.path == '/register' ? appToken : agentToken;
    newHeaders.addEntries({'Authorization': 'Bearer $token'}.entries);
    return handler.next(options);
  },
  onResponse: (response, handler) {
    debugPrint('[${response.requestOptions.path}] => [${response.statusCode}]');
    return handler.next(response);
  },
  onError: (error, handler) {
    debugPrint(
        'Error [${error.response?.requestOptions.path}] => Code [${error.response?.statusCode}] => [${error.response!.data['error']['message']}]');

    return handler.reject(error);
  },
);
