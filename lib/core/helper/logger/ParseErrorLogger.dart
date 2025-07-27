import 'package:dio/dio.dart';

abstract class ParseErrorLogger {
  void logError(Object error, StackTrace stackTrace, RequestOptions requestOptions);
}

class ConsoleErrorLogger implements ParseErrorLogger {
  @override
  void logError(Object error, StackTrace stackTrace, RequestOptions requestOptions) {
    print('🚨 Error: $error');
    print('🧵 Stack: $stackTrace');
    print('📤 Request: ${requestOptions.uri}');
  }
}


