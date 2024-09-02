import 'dart:io';
import 'package:dart_kit/dart_kit.dart';
import 'package:dio/dio.dart';
import 'package:beneficiary/base/data/sources/auth_local_datasource.dart';
import 'package:beneficiary/base/data/sources/token_type.dart';

/// Class to intercept HTTP requests and errors related to authentication.
class AuthInterceptor extends Interceptor with Loggable {
  AuthInterceptor(this._authLocalSource);

  // local source for storing and retrieving the user's access token
  final AuthLocalSource _authLocalSource;

  @override
  String get loggerTag => 'AuthInterceptor';

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final tokenType = TokenType.fromExtra(options.extra);

    switch (tokenType) {
      case TokenType.JWT:
        final accessToken = await _authLocalSource.getUserToken().first;
        if (accessToken != null) {
          options.headers[HttpHeaders.authorizationHeader] =
              "Bearer $accessToken";
        } else {
          i('Request asking for auth header but local source return null for access token');
        }
        break;

      case TokenType.None:
        break;
    }

    handler.next(options);
  }

  @override
  Future onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      await _authLocalSource.saveUserToken(null);
    }
    handler.next(err);
  }
}
