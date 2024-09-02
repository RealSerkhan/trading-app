// import 'dart:async';

// import 'package:flutter/foundation.dart';
// import 'package:sum3a/base/domain/models/invoke_status.dart';

// /// An abstract class representing a use case that does not return a result.
// abstract class UseCase<P> {
//   const UseCase();

//   /// The default timeout duration for use case execution.
//   static const Duration _defaultTimeout = Duration(minutes: 5);

//   /// Executes the use case with the given [params] and returns a stream of [InvokeStatus] objects.
//   /// If the execution takes longer than the specified [timeout], a [TimeoutException] is thrown.
//   Stream<InvokeStatus> call(P params, {Duration timeout = _defaultTimeout}) async* {
//     try {
//       /// Emit a started status.
//       yield InvokeStatus.started();

//       /// Execute the work of the use case, with a timeout specified by [timeout].
//       await doWork(params).timeout(
//         timeout,
//         onTimeout: () => throw TimeoutException(''),
//       );

//       /// Emit a success status.
//       yield InvokeStatus.success();
//     } catch (error) {
//       /// Emit an error status with the caught exception as the throwable.
//       yield InvokeStatus.error(error);
//     }
//   }

//   /// Executes the work of the use case synchronously.
//   Future<void> executeSync(P params) async => doWork(params);

//   /// Abstract method to be implemented by subclasses to perform the work of the use case.
//   @protected
//   Future<void> doWork(P params);
// }
