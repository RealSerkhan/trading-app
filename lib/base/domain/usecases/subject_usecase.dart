import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

/// An abstract class representing a use case that returns a stream of data.
/// Each time the [call] method is called with new [params], a new stream is created using the [createObservable] method.
abstract class SubjectUseCase<P, T> {
  /// A behavior subject that is used to switch between streams of data.
  final BehaviorSubject<P> _controller = BehaviorSubject<P>();

  /// Sends the new [params] to the behavior subject, causing it to switch to a new stream of data.
  void call(P params) => _controller.add(params);

  /// Returns a stream that switches between the streams created by the [createObservable] method.
  Stream<T> observe() =>
      _controller.switchMap((P value) => createObservable(value));

  /// Closes the behavior subject and releases its resources.
  Future<void> dispose() => _controller.close();

  /// Abstract method to be implemented by subclasses to create a stream of data for the given [params].
  @protected
  Stream<T> createObservable(P params);
}
