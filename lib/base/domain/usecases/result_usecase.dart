import 'dart:async';

import 'package:flutter/foundation.dart';

/// An abstract class representing a use case that returns a result.
abstract class ResultUseCase<P, R> {
  const ResultUseCase();

  /// Executes the use case with the given [params] and returns the result.
  Future<R> call(P params) => doWork(params);

  /// Abstract method to be implemented by subclasses to perform the work of the use case.
  @protected
  Future<R> doWork(P params);
}
