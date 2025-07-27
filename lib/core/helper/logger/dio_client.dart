import 'package:dio/dio.dart';

Dio createDio() {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com',
    headers: {
      'Accept': 'application/json',
    },
    validateStatus: (status) => status != null && status < 500,
  ));

  dio.interceptors.add(LogInterceptor(
    request: true,
    requestBody: true,
    responseBody: true,
    error: true,
  ));

  return dio;
}
