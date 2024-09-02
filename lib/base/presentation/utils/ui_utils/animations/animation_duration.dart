/// Enum representing animation durations.
library;

// ignore_for_file: constant_identifier_names

enum AnimationDuration {
  /// A short duration.
  SHORT(Duration(milliseconds: 200)),

  /// A medium duration.
  MEDIUM(Duration(milliseconds: 400)),

  /// A long duration.
  LONG(Duration(milliseconds: 500)),
  ;

  /// Constructs an [AnimationDuration] with the given [duration].
  const AnimationDuration(this.duration);

  /// The duration of this animation.
  final Duration duration;
}
