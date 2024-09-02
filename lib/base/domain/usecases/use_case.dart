import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../errors/failure.dart';

abstract class EitherUseCase<Type, Params> {
  const EitherUseCase();
  Future<Either<Failure, Type>> call(Params params) => doWork(params);
  @protected
  Future<Either<Failure, Type>> doWork(Params params);
}


