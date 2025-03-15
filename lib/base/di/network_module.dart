import 'package:dart_kit/dart_kit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http_sdk/http_sdk.dart';
import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/data/sources/auth_local_datasource.dart';
import 'package:beneficiary/base/networking/auth_interceptor.dart';
import 'package:beneficiary/base/networking/dio_http_client.dart';
import 'package:beneficiary/base/networking/http_client.dart';

@module
abstract class NetworkModule {
  @Named('ApiBaseUrl')
  String get apiBaseUrl => 'https://finnhub.io/api/v1';

  @Named('WebsocketUrl')
  String get websocketUrl => 'wss://ws.finnhub.io?token=${dotenv.env['FINNHUB_API_KEY']}';

  @injectable
  BaseOptions dioOptions(@Named('ApiBaseUrl') String baseUrl) => BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 120),
        receiveTimeout: const Duration(seconds: 120),
        contentType: 'application/json;charset=utf-8',
        headers: <String, String>{
          'Accept': 'application/json',
          'Connection': 'keep-alive',
        },
      );

  @singleton
  Dio dio(
    BaseOptions options,
    AuthLocalSource authLocalSource,
  ) =>
      Dio(options).also(
        (dio) => dio.interceptors.addAll(
          <Interceptor>[
            AuthInterceptor(authLocalSource),
            // RetryInterceptor(
            //   dio: dio,
            //   retryDelays: const [
            //     Duration(seconds: 1), // wait 1 sec before first retry
            //     Duration(seconds: 2), // wait 2 sec before second retry
            //     Duration(seconds: 3), // wait 3 sec before third retry
            //   ],
            // ),
            if (kDebugMode)
              LogInterceptor(
                requestBody: true,
                responseBody: true,
              ),
          ],
        ),
      );

  @singleton
  HttpClient httpClient(Dio dio) => DioHttpClient(dio);

  

  @singleton
  HttpSdk httpSdk(Dio dio) => HttpSdk(dio: dio, interceptors: []);
}
