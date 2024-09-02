import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class AuthException implements Exception {
  AuthException();
}

class WrongDataException extends Equatable implements Exception {
  final String? cause;
  final String sourceClass;
  final String? callId;
  final Response response;
  final int? statusCode;
  final dynamic errorData;
  const WrongDataException({
    required this.response,
    required this.sourceClass,
    this.callId,
    this.statusCode,
    this.cause,
    this.errorData,
  });

  @override
  List<Object?> get props => [cause, statusCode, sourceClass];
}

class ServerNotWorkingException implements Exception {
  final String? sourceClass;
  final String? callId;
  ServerNotWorkingException({this.sourceClass, this.callId});
}

class NoInternetException implements Exception {
  NoInternetException();
}

class CacheException implements Exception {
  final String? sourceClass;
  CacheException({this.sourceClass});
}

class UnKnownException implements Exception {
  final String? sourceClass;
  final String? callId;
  UnKnownException({this.sourceClass, this.callId});
}
