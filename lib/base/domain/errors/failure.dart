import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? errorMessage;
  const Failure({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class ServerFailure extends Failure {
  final String? sourceClass;
  final String? callId;
  final Response? response;
  final int? statusCode;
  const ServerFailure(
      {this.callId,
      this.sourceClass,
      this.response,
      this.statusCode,
      super.errorMessage});
}

class ConnectionTimeOutFailure extends ServerFailure {
  const ConnectionTimeOutFailure({super.callId});
}

class InvalidInputFailure extends ServerFailure {
  const InvalidInputFailure({
    super.errorMessage,
    super.callId,
  });
}

class BannedFailure extends ServerFailure {
  const BannedFailure({
    super.callId,
    super.errorMessage,
  });
}

class NotFoundFailure extends ServerFailure {
  const NotFoundFailure({
    super.callId,
    super.errorMessage,
  });
}

class CacheFailure extends ServerFailure {
  const CacheFailure({
    super.callId,
    super.errorMessage,
  });
}

class DatabaseFailure extends ServerFailure {
  const DatabaseFailure({
    super.callId,
    super.errorMessage,
  });
}

class AuthFailure extends ServerFailure {
  const AuthFailure({
    super.callId,
    super.errorMessage,
  });
}

class RequestFailure extends ServerFailure {
  const RequestFailure({
    super.callId,
    super.errorMessage,
  });
}

class FavoriteLimitExceedFailure extends ServerFailure {
  final String itemCode;
  const FavoriteLimitExceedFailure(
      {required this.itemCode, super.callId, super.errorMessage});
}

class ServerNotWorkingFailure extends ServerFailure {
  const ServerNotWorkingFailure({
    super.callId,
    super.errorMessage,
  });
}

class UpdateNeedFailure extends ServerFailure {
  const UpdateNeedFailure({
    super.errorMessage,
    super.callId,
  });
}

class NoInternetFailure extends Failure {
  const NoInternetFailure({
    super.errorMessage,
  });
}

class UnknownFailure extends Failure {
  final String? sourceClass;
  final String? callId;
  const UnknownFailure({this.callId, this.sourceClass, super.errorMessage});
}

class TimeoutFailure extends Failure {
  const TimeoutFailure({super.errorMessage});
}
