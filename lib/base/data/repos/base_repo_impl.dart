import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:beneficiary/base/data/sources/auth_local_datasource.dart';
import 'package:beneficiary/base/domain/errors/exceptions.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/repos/base_repo.dart';

class BaseRepositoryImpl implements BaseRepository {
  const BaseRepositoryImpl(this.authLocal);
  final AuthLocalSource authLocal;

  @override
  Future<Either<Failure, T>> request<T>(Function data,
      {Function? toDomainHandler, Either<Failure, T>? Function(WrongDataException e)? exceptionHandler}) async {
    try {
      final result = await data.call();
      return Right(toDomainHandler?.call(result) ?? result);
    } on WrongDataException catch (e) {
      return _handleWrongDataException(e, exceptionHandler: exceptionHandler);
    } on ServerNotWorkingException catch (error) {
      return Left(ServerNotWorkingFailure(callId: error.callId));
    } on NoInternetException {
      return const Left(NoInternetFailure());
    } on CacheException {
      return const Left(CacheFailure());
    } on TimeoutException {
      return const Left(TimeoutFailure());
    } on UnKnownException catch (error) {
      return Left(UnknownFailure(callId: error.callId, sourceClass: error.sourceClass));
    } catch (e) {
      log(e.toString());
      return const Left(UnknownFailure());
    }
  }
}

Either<Failure, T> _handleWrongDataException<T>(WrongDataException e,
    {Either<Failure, T>? Function(WrongDataException e)? exceptionHandler}) {
  final customException = exceptionHandler?.call(e);
  if (customException != null) {
    return customException;
  } else if (e.statusCode == 401) {
    return Left(AuthFailure(errorMessage: e.cause, callId: e.callId));
  } else if (e.statusCode == 403 || e.statusCode == 400) {
    return Left(BannedFailure(errorMessage: e.cause, callId: e.callId));
  } else if (e.statusCode == 404) {
    return Left(NotFoundFailure(callId: e.callId, errorMessage: e.cause));
  }

  if (e.statusCode == 406) {
    return Left(UpdateNeedFailure(errorMessage: e.cause, callId: e.callId));
  }
  return Left(ServerFailure(
    errorMessage: e.cause,
    callId: e.callId,
    response: e.response,
    sourceClass: e.sourceClass,
    statusCode: e.statusCode,
  ));
}
