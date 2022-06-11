import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioInterceptors = <Interceptor>[
  _loggerInterceptor,
];

final _loggerInterceptor = PrettyDioLogger(
  requestBody: true,
  responseBody: true,
);
