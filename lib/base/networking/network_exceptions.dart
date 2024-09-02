import 'package:flutter/foundation.dart';

/// Base class for all network exceptions
class NetworkException implements Exception {
  const NetworkException._();

  /// Exception for unauthorized requests
  const factory NetworkException.unauthorizedRequest(body) =
      UnauthorizedRequest;

  /// Exception for bad requests
  const factory NetworkException.badRequest() = BadRequest;

  /// Exception for requests that did not find a match
  const factory NetworkException.notFound(String reason) = NotFound;

  /// Exception for requests that did not find a match
  const factory NetworkException.firebase(
      {required String code, String? reason}) = FirebaseNetworkException;

  /// Exception for requests with a method that is not allowed
  const factory NetworkException.methodNotAllowed() = MethodNotAllowed;

  /// Exception for requests that are not acceptable
  const factory NetworkException.notAcceptable() = NotAcceptable;

  /// Exception for requests that caused a conflict
  const factory NetworkException.conflict() = Conflict;

  /// Exception for requests that resulted in an internal server error
  const factory NetworkException.internalServerError() = InternalServerError;

  /// Exception for requests with a method that is not implemented
  const factory NetworkException.notImplemented() = NotImplemented;

  /// Exception for requests that resulted in a service unavailable error
  const factory NetworkException.serviceUnavailable() = ServiceUnavailable;

  /// Exception for requests that failed due to no internet connection
  const factory NetworkException.noInternetConnection() = NoInternetConnection;

  /// Exception for requests that resulted in a format exception
  const factory NetworkException.formatException() = FormatException;

  /// Exception for requests that could not be processed
  const factory NetworkException.unableToProcess() = UnableToProcess;

  /// Exception for requests resulted in a timeout exception
  const factory NetworkException.timeOut() = TimeOut;

  /// Exception for requests resulted in a too many request exception
  const factory NetworkException.tooManyRequests() = TooManyRequests;

  /// Exception for requests resulted in a not valid phone exception
  const factory NetworkException.phoneNotValid() = PhoneNotValid;

  /// Exception for unexpected errors
  const factory NetworkException.unexpectedError() = UnexpectedError;

  /// Exception for default errors
  const factory NetworkException.defaultError(int? code, String? error) =
      DefaultError;

  /// Returns a [NetworkException] based on the HTTP status code and response body of a request
  ///
  /// [statusCode] is the HTTP status code of the response
  /// [body] is the response body of the request
  static NetworkException handleResponseException(
    int? statusCode,
    dynamic body,
  ) {
    switch (statusCode) {
      //TODO investigate if 400 is for unauth
      // case 400:
      case 401:
      case 403:
        return NetworkException.unauthorizedRequest(body);
      case 400:
      case 404:
        return NetworkException.notFound(body ?? 'Not found');
      case 409:
        return const NetworkException.conflict();
      case 408:
        return const NetworkException.noInternetConnection();
      case 500:
        return const NetworkException.internalServerError();
      case 503:
        return const NetworkException.serviceUnavailable();
      default:
        return NetworkException.defaultError(
          statusCode,
          'Received invalid status code. body: $body',
        );
    }
  }

  /// Returns a message for a given [NetworkException]
  ///
  /// [networkExceptions] is the [NetworkException] to get the message for
  static String getErrorMessage(NetworkException networkExceptions) {
    var errorMessage = '';
    networkExceptions.when(
      notImplemented: () {
        errorMessage = 'Not Implemented';
      },
      internalServerError: () {
        errorMessage = 'Internal Server Error';
      },
      notFound: (String reason) {
        errorMessage = reason;
      },
      serviceUnavailable: () {
        errorMessage = 'Service unavailable';
      },
      methodNotAllowed: () {
        errorMessage = 'Method Allowed';
      },
      badRequest: () {
        errorMessage = 'Bad request';
      },
      unauthorizedRequest: (body) {
        errorMessage = 'Unauthorized request - $body';
      },
      unexpectedError: () {
        errorMessage = 'Unexpected error occurred';
      },
      noInternetConnection: () {
        errorMessage = 'No internet connection';
      },
      conflict: () {
        errorMessage = 'Error due to a conflict';
      },
      unableToProcess: () {
        errorMessage = 'Unable to process the data';
      },
      defaultError: (int? code, String? error) {
        errorMessage = error ?? 'Unexpected error occurred';
      },
      formatException: () {
        errorMessage = 'Unexpected error occurred';
      },
      notAcceptable: () {
        errorMessage = 'Not acceptable';
      },
    );

    return errorMessage;
  }

  /// Exception for unauthorized requests

  /// Maps a [NetworkException] to a value of type `E`
  ///
  /// [unauthorizedRequest] is the function to call if this is an [UnauthorizedRequest]
  /// [badRequest] is the function to call if this is a [BadRequest]
  /// [notFound] is the function to call if this is a [NotFound]
  /// [methodNotAllowed] is the function to call if this is a [MethodNotAllowed]
  /// [notAcceptable] is the function to call if this is a [NotAcceptable]
  /// [conflict] is the function to call if this is a [Conflict]
  /// [internalServerError] is the function to call if this is a [InternalServerError]
  /// [notImplemented] is the function to call if this is a [NotImplemented]
  /// [serviceUnavailable] is the function to call if this is a [ServiceUnavailable]
  /// [noInternetConnection] is the function to call if this is a [NoInternetConnection]
  /// [formatException] is the function to call if this is a [FormatException]
  /// [unableToProcess] is the function to call if this is a [UnableToProcess]
  /// [unexpectedError] is the function to call if this is an [UnexpectedError]
  /// [defaultError] is the function to call if this is a [DefaultError]
  E map<E extends Object?>({
    required E Function(UnauthorizedRequest value) unauthorizedRequest,
    required E Function(BadRequest value) badRequest,
    required E Function(NotFound value) notFound,
    required E Function(MethodNotAllowed value) methodNotAllowed,
    required E Function(NotAcceptable value) notAcceptable,
    required E Function(Conflict value) conflict,
    required E Function(InternalServerError value) internalServerError,
    required E Function(NotImplemented value) notImplemented,
    required E Function(ServiceUnavailable value) serviceUnavailable,
    required E Function(NoInternetConnection value) noInternetConnection,
    required E Function(FormatException value) formatException,
    required E Function(UnableToProcess value) unableToProcess,
    required E Function(UnexpectedError value) unexpectedError,
    required E Function(DefaultError value) defaultError,
  }) {
    if (this is UnauthorizedRequest) {
      return unauthorizedRequest(this as UnauthorizedRequest);
    } else if (this is BadRequest) {
      return badRequest(this as BadRequest);
    } else if (this is NotFound) {
      return notFound(this as NotFound);
    } else if (this is MethodNotAllowed) {
      return methodNotAllowed(this as MethodNotAllowed);
    } else if (this is NotAcceptable) {
      return notAcceptable(this as NotAcceptable);
    } else if (this is Conflict) {
      return conflict(this as Conflict);
    } else if (this is InternalServerError) {
      return internalServerError(this as InternalServerError);
    } else if (this is NotImplemented) {
      return notImplemented(this as NotImplemented);
    } else if (this is ServiceUnavailable) {
      return serviceUnavailable(this as ServiceUnavailable);
    } else if (this is NoInternetConnection) {
      return noInternetConnection(this as NoInternetConnection);
    } else if (this is FormatException) {
      return formatException(this as FormatException);
    } else if (this is UnableToProcess) {
      return unableToProcess(this as UnableToProcess);
    } else if (this is UnexpectedError) {
      return unexpectedError(this as UnexpectedError);
    } else if (this is DefaultError) {
      return defaultError(this as DefaultError);
    } else {
      throw UnimplementedError(
        '$runtimeType is not valid type of NetworkException',
      );
    }
  }

  E when<E extends Object?>({
    required E Function(dynamic body) unauthorizedRequest,
    required E Function() badRequest,
    required E Function(String reason) notFound,
    required E Function() methodNotAllowed,
    required E Function() notAcceptable,
    required E Function() conflict,
    required E Function() internalServerError,
    required E Function() notImplemented,
    required E Function() serviceUnavailable,
    required E Function() noInternetConnection,
    required E Function() formatException,
    required E Function() unableToProcess,
    required E Function() unexpectedError,
    required E Function(int? code, String? error) defaultError,
  }) =>
      map<E>(
        unauthorizedRequest: (data) => unauthorizedRequest(data.body),
        badRequest: (_) => badRequest(),
        notFound: (body) => notFound(body.reason),
        methodNotAllowed: (_) => methodNotAllowed(),
        notAcceptable: (_) => notAcceptable(),
        conflict: (_) => conflict(),
        internalServerError: (_) => internalServerError(),
        notImplemented: (_) => notImplemented(),
        serviceUnavailable: (_) => serviceUnavailable(),
        noInternetConnection: (_) => noInternetConnection(),
        formatException: (_) => formatException(),
        unableToProcess: (_) => unableToProcess(),
        unexpectedError: (_) => unexpectedError(),
        defaultError: (data) => defaultError(data.code, data.error),
      );
}

@immutable
class UnauthorizedRequest extends NetworkException {
  const UnauthorizedRequest(this.body) : super._();
  final dynamic body;
}

@immutable
class BadRequest extends NetworkException {
  const BadRequest() : super._();
}

@immutable
class NotFound extends NetworkException {
  const NotFound(this.reason) : super._();
  final String reason;
}

@immutable
class FirebaseNetworkException extends NetworkException {
  const FirebaseNetworkException({required this.code, this.reason}) : super._();
  final String? reason;
  final String code;
}

@immutable
class MethodNotAllowed extends NetworkException {
  const MethodNotAllowed() : super._();
}

@immutable
class NotAcceptable extends NetworkException {
  const NotAcceptable() : super._();
}

@immutable
class Conflict extends NetworkException {
  const Conflict() : super._();
}

@immutable
class InternalServerError extends NetworkException {
  const InternalServerError() : super._();
}

@immutable
class NotImplemented extends NetworkException {
  const NotImplemented() : super._();
}

@immutable
class ServiceUnavailable extends NetworkException {
  const ServiceUnavailable() : super._();
}

@immutable
class NoInternetConnection extends NetworkException {
  const NoInternetConnection() : super._();
}

@immutable
class FormatException extends NetworkException {
  const FormatException() : super._();
}

@immutable
class UnableToProcess extends NetworkException {
  const UnableToProcess() : super._();
}

@immutable
class TimeOut extends NetworkException {
  const TimeOut() : super._();
}

@immutable
class TooManyRequests extends NetworkException {
  const TooManyRequests() : super._();
}

@immutable
class PhoneNotValid extends NetworkException {
  const PhoneNotValid() : super._();
}

@immutable
class UnexpectedError extends NetworkException {
  const UnexpectedError() : super._();
}

@immutable
class DefaultError extends NetworkException {
  const DefaultError(this.code, this.error) : super._();
  final int? code;
  final String? error;
}
