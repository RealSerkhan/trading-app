import 'dart:convert';
import 'package:dart_kit/dart_kit.dart';
import 'package:dio/dio.dart';
import 'package:beneficiary/base/data/sources/token_type.dart';
import 'package:beneficiary/base/domain/enums/serializer_type.dart';
import 'package:beneficiary/base/domain/errors/exceptions.dart';
import 'package:beneficiary/base/domain/models/base_response/base_response.dart';
import 'package:beneficiary/base/networking/dio_http_client.dart';
import 'package:beneficiary/base/networking/http_client.dart';
import 'package:beneficiary/base/networking/network_exceptions.dart';
import 'package:http_sdk/http_sdk.dart';

/// Abstract base class for a remote data source, which is responsible for making HTTP requests
/// to a server and handling the responses.
abstract class BaseRemoteSource with Loggable {
  const BaseRemoteSource(this._client, this.sdk);

  /// The base HTTP client used to make requests.
  final HttpClient _client;

  /// The open-api generated HTTP SDK.
  final HttpSdk sdk;

  /// Makes an SDK request and returns the result as a [Result] object.
  Future<Result<T>> sdkRequest<T>(Future<Response<T>> call) =>
      call.catchError((e) => throw DioHttpClient.getDioException(e))._mapToResult<T>();

  /// Makes an HTTP request to the specified endpoint with the specified method and parameters.
  ///
  /// Returns a [Future] that completes with the result of the request as a [Result] object.
  ///
  /// The following parameters are available:
  /// [method] : The HTTP method to use for the request (e.g. GET, POST, DELETE).
  /// [endpoint] : The endpoint to make the request to.
  /// [serializer] : A function that takes the JSON response data and returns an object of type `T`.
  /// [data] : The data to send with the request.
  /// [queryParameters] : Query parameters to include in the request.
  /// [headers] : HTTP headers to include in the request.
  /// [withAuth] : Whether to include an authorization header in the request. Defaults to `true`.
  /// [onSendProgress] : A callback to be called when the request is being sent.
  /// [onReceiveProgress] : A callback to be called when the response is being received.
  /// [cancelToken] : A token that can be used to cancel the request.
  /// [tokenType] : Auth token type.
  Future<T> request<T>({
    required HttpMethod method,
    required String endpoint,
    required String callId,
    required T Function(dynamic json) serializer,
    SerializerType serializerType = SerializerType.Single,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool withAuth = true,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
    TokenType tokenType = TokenType.JWT,
  }) async {
    d(
      '''
start http request with:
method: $method,
endpoint: $endpoint,
serializer: $serializer,
data: $data,
queryParameters: $queryParameters,
headers: $headers,
withAuth: $withAuth,
onSendProgress: $onSendProgress,
onReceiveProgress: $onReceiveProgress,
cancelToken: $cancelToken,
      ''',
    );

    // add auth flag to headers if `withAuth` is true
    final Options options = Options(headers: headers, extra: (!withAuth ? TokenType.None : tokenType).asExtra);

    switch (method) {
      case HttpMethod.GET:
        return _client
            .get(
              endpoint,
              queryParameters: queryParameters,
              options: options,
              cancelToken: cancelToken,
              onReceiveProgress: onReceiveProgress,
            )
            .mapToResult(serializer, loggerTag, callId, serializerType);

      case HttpMethod.POST:
        return _client
            .post(
              endpoint,
              data: data,
              queryParameters: queryParameters,
              options: options,
              cancelToken: cancelToken,
              onSendProgress: onSendProgress,
              onReceiveProgress: onReceiveProgress,
            )
            .mapToResult(serializer, loggerTag, callId, serializerType);

      case HttpMethod.DELETE:
        return _client
            .delete(
              endpoint,
              queryParameters: queryParameters,
              options: options,
              cancelToken: cancelToken,
              data: data,
            )
            .mapToResult(serializer, loggerTag, callId, serializerType);

      case HttpMethod.PATCH:
        return _client
            .patch(
              endpoint,
              queryParameters: queryParameters,
              options: options,
              data: data,
              cancelToken: cancelToken,
              onReceiveProgress: onReceiveProgress,
              onSendProgress: onSendProgress,
            )
            .mapToResult(serializer, loggerTag, callId, serializerType);

      case HttpMethod.PUT:
        return _client
            .put(
              endpoint,
              queryParameters: queryParameters,
              options: options,
              data: data,
              cancelToken: cancelToken,
              onReceiveProgress: onReceiveProgress,
              onSendProgress: onSendProgress,
            )
            .mapToResult(serializer, loggerTag, callId, serializerType);

      default:
        throw UnimplementedError('$method not implemented');
    }
  }
}

extension ResponseExtensions on Future<Response<dynamic>> {
  /// Processes the response and returns the result as a [Result] object.
  ///
  /// The following parameters are available:
  /// [serializer] : A function that takes the JSON response data and returns an object of type `R`.
  Future<Result<R>> _processCall<R>({R Function(dynamic json)? serializer}) => then((it) {
        if (it.isSuccess) {
          return Result<R>.data(ResultOrigin.network, serializer?.call(jsonDecode(it.data)) ?? it.data! as R);
        }
        return Result<R>.error(ResultOrigin.network, NetworkException.handleResponseException(it.statusCode, it.data));
      }).catchError((it, st) {
        Logger.e('Remote Source RESPONSE: e: $it\nst: $st');
        return Result<R>.error(ResultOrigin.network, it, st);
      });

  Future<Result<R>> _mapToResult<R>() => _processCall<R>();

  Future<R> mapToResult<R>(
          R Function(dynamic json) serializer, String loggerTag, String callID, SerializerType serializerType) =>
      then((it) async {
        if (it.statusCode == 200) {
          if (serializerType == SerializerType.Single) {
            return (serializer.call(it.data));
          } else if (serializerType == SerializerType.List) {
            return listSerializer(it.data, serializer) as R;
          } else {
            return (serializer.call(it.data));
          }
        } else {
          throw WrongDataException(
            errorData: it.data,
            sourceClass: loggerTag,
            callId: callID,
            response: it,
            statusCode: it.statusCode,
          );
        }
      }).catchError((error) {
        if (error is DioException) {
          if (error.response == null || error.response?.statusCode == 500) {
            throw ServerNotWorkingException(
              sourceClass: loggerTag,
              callId: callID,
            );
          }
          final BaseResponse responseData = BaseResponse.fromJson(error.response!.data ?? {});
          throw WrongDataException(
            errorData: responseData.data,
            sourceClass: loggerTag,
            callId: callID,
            cause: responseData.message,
            response: error.response!,
            statusCode: error.response!.statusCode,
          );
        }
        if (error is WrongDataException || error is ServerNotWorkingException) {
          throw error;
        } else {
          throw UnKnownException(
            callId: callID,
            sourceClass: loggerTag,
          );
        }
      });

  List<dynamic> listSerializer(BaseResponse responseData, Function(dynamic json) serializer) =>
      List.from((responseData.data as List).map((child) => (serializer.call(responseData.data))).toList());
}
