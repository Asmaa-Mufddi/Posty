import 'package:dio/dio.dart';

class ParseErrorLogger {
  void logError(Object error, StackTrace stackTrace, RequestOptions options) {
    print('API ERROR: ${options.method} ${options.uri}');
    print('Error: $error');
    print(stackTrace);
  }
}