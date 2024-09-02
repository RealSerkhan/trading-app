// ignore_for_file: constant_identifier_names

import 'dart:core';

import 'package:dio/dio.dart';

/// An enumeration of HTTP methods.
enum HttpMethod {
  GET,
  POST,
  PUT,
  PATCH,
  DELETE,
}

/// An abstract class that represents a client for making HTTP requests.
abstract class HttpClient {
  /// Sends a GET request to the specified URI.
  ///
  /// [uri] is the URI to send the request to.
  /// [queryParameters] are the query parameters to include in the request.
  /// [options] are the options to use for the request.
  /// [cancelToken] is the cancel token to use for the request.
  /// [onReceiveProgress] is a callback for receiving progress events for the
  /// request.
  ///
  /// Returns a `Future` that completes with the response to the request.
  Future<Response> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  });

  /// Sends a POST request to the specified URI.
  ///
  /// [uri] is the URI to send the request to.
  /// [data] is the data to include in the request body.
  /// [queryParameters] are the query parameters to include in the request.
  /// [options] are the options to use for the request.
  /// [cancelToken] is the cancel token to use for the request.
  /// [onSendProgress] is a callback for sending progress events for the request.
  /// [onReceiveProgress] is a callback for receiving progress events for the
  /// request.
  ///
  /// Returns a `Future` that completes with the response to the request.
  Future<Response> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });

  /// Sends a PUT request to the specified URI.
  ///
  /// [uri] is the URI to send the request to.
  /// [data] is the data to include in the request body.
  /// [queryParameters] are the query parameters to include in the request.
  /// [options] are the options to use for the request.
  /// [cancelToken] is the cancel token to use for the request.
  /// [onSendProgress] is a callback for sending progress events for the request.
  /// [onReceiveProgress] is a callback for receiving progress events for the
  /// request.
  ///
  /// Returns a `Future` that completes with the response to the request.
  Future<Response> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });

  /// Sends a PATCH request to the specified URI.
  ///
  /// [uri] is the URI to send the request to.
  /// [data] is the data to include in the request body.
  /// [queryParameters] are the query parameters to include in the request.
  /// [options] are the options to use for the request.
  /// [cancelToken] is the cancel token to use for the request.
  /// [onSendProgress] is a callback for sending progress events for the request.
  /// [onReceiveProgress] is a callback for receiving progress events for the
  /// request.
  ///
  /// Returns a `Future` that completes with the response to the request.
  Future<Response> patch(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });

  /// Sends a DELETE request to the specified URI.
  ///
  /// [uri] is the URI to send the request to.
  /// [data] is the data to include in the request body.
  /// [queryParameters] are the query parameters to include in the request.
  /// [options] are the options to use for the request.
  /// [cancelToken] is the cancel token to use for the request.
  ///
  /// Returns a `Future` that completes with the response to the request.
  Future<Response> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  });
}

extension ResponseExtensions<T> on Response<T> {
  /// Returns `true` if the response has a status code of 200 (OK).
  ///
  /// Returns `false` otherwise.
  bool get isSuccess => statusCode == 200 || statusCode == 204;
}
