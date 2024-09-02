import 'package:dartz/dartz.dart';
import 'package:beneficiary/base/domain/errors/exceptions.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';

typedef FutureEitherFailureOrData<T> = Future<Either<Failure, T>> Function();

abstract class BaseRepository {
  Future<Either<Failure, T>> request<T>(Function data,
      {Either<Failure, T>? Function(WrongDataException e)? exceptionHandler});
}
