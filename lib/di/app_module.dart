import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
@injectable
abstract class AppModule {
  @singleton
  Dio dio() => Dio(BaseOptions(
        connectTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        responseType: ResponseType.json,
        contentType: 'application/json; charset=utf-8',
        headers: {
          "Access-Control-Allow-Credentials": true,
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "GET, DELETE, POST, PUT, OPTIONS",
          "Access-Control-Allow-Headers": "Content-Type, Authorization"
        },
      ))
        ..interceptors.add(LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ));
}
