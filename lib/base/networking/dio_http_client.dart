import 'dart:io';

import 'package:dio/dio.dart';
import 'package:beneficiary/base/networking/http_client.dart';
import 'package:beneficiary/base/networking/network_exceptions.dart';

/// dio client for making HTTP requests.
class DioHttpClient implements HttpClient {
  const DioHttpClient(this._dio);

  final Dio _dio;

  @override
  Future<Response> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) =>
      _processNetworkCall(
        () => _dio.get(
          uri,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
        ),
      );

  @override
  Future<Response> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) =>
      _processNetworkCall(
        () => _dio.delete(
          uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        ),
      );

  @override
  Future<Response> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _processNetworkCall(
        () => _dio.post(
          uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
        ),
      );

  @override
  Future<Response> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _processNetworkCall(
        () => _dio.put(
          uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
        ),
      );

  @override
  Future<Response> patch(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _processNetworkCall(
        () => _dio.patch(
          uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
        ),
      );

  /// Processes a network call and catches any errors that occur
  ///
  /// [call] is a function that returns a [Future] of type [Response].
  Future<Response> _processNetworkCall(Future<Response> Function() call) =>
      call();
  //TODO investigate this Real
  // .catchError((e) =>

  //  throw DioHttpClient.getDioException(e));

  /// Returns a [NetworkException] based on the error that occurred during a network call
  ///
  /// [error] is an error that occurred during a network call
  static NetworkException getDioException(error) {
    if (error is Exception) {
      try {
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
            case DioExceptionType.connectionTimeout:
            case DioExceptionType.unknown:
            case DioExceptionType.receiveTimeout:
            case DioExceptionType.sendTimeout:
              return const NetworkException.noInternetConnection();
            case DioExceptionType.badResponse:
              return NetworkException.handleResponseException(
                error.response?.statusCode,
                error.response?.data,
              );
            case DioExceptionType.badCertificate:
            // TODO: Handle this case.
            case DioExceptionType.connectionError:
            // TODO: Handle this case.
          }
        } else if (error is SocketException) {
          return const NetworkException.noInternetConnection();
        } else {
          return const NetworkException.unexpectedError();
        }
      } on FormatException catch (_) {
        return const NetworkException.formatException();
      } catch (_) {
        return const NetworkException.unexpectedError();
      }
    } else {
      return error.toString().contains('is not a subtype of')
          ? const NetworkException.unableToProcess()
          : const NetworkException.unexpectedError();
    }
    return const NetworkException.unexpectedError();
  }
}
