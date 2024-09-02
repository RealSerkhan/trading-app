import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ui_utils/animations/animation_duration.dart';

/// A widget that transitions between two children using an animation.
class AnimatedSwitcher2 extends StatelessWidget {
  /// Constructs an [AnimatedSwitcher2].
  const AnimatedSwitcher2({
    required this.child,
    required this.showChild,
    this.duration = AnimationDuration.MEDIUM,
    this.child2,
    this.customDuration,
    this.transitionBuilder = AnimatedSwitcher.defaultTransitionBuilder,
    super.key,
  });

  /// The default animation duration for this widget.
  final AnimationDuration duration;

  /// An optional custom animation duration for this widget. If specified, this will override the [duration] value.
  final Duration? customDuration;

  /// The function that builds the transition animation between the two children.
  final AnimatedSwitcherTransitionBuilder transitionBuilder;

  /// The widget to display when [showChild] is `true`.
  final Widget child;

  /// The widget to display when [showChild] is `false`. If not specified, a [SizedBox.shrink] widget will be used.
  final Widget? child2;

  /// Whether to show [child] or [child2].
  final bool showChild;

  /// The animation duration to use for this widget. This will be either [customDuration] or [duration.duration].
  Duration get _duration => customDuration ?? duration.duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: _duration,
      transitionBuilder: transitionBuilder,
      child: showChild ? child : (child2 ?? const SizedBox.shrink()),
    );
  }
}

/// A widget that transitions between two children by animating their size.
class AnimatedSizeSwitcher extends StatelessWidget {
  /// Constructs an [AnimatedSizeSwitcher].
  const AnimatedSizeSwitcher({
    required this.showChild,
    required this.child,
    this.child2,
    this.duration = AnimationDuration.MEDIUM,
    this.customDuration,
    this.axis = Axis.vertical,
    this.axisAlignment = 0.0,
    super.key,
  });

  /// The default animation duration for this widget.
  final AnimationDuration duration;

  /// An optional custom animation duration for this widget. If specified, this will override the [duration] value.
  final Duration? customDuration;

  /// The widget to display when [showChild] is `true`.
  final Widget child;

  /// The widget to display when [showChild] is `false`. If not specified, a [SizedBox.shrink] widget will be used.
  final Widget? child2;

  /// Whether to show [child] or [child2].
  final bool showChild;

  /// The axis along which the size animation should occur.
  final Axis axis;

  /// The alignment of the child along the [axis] axis.
  final double axisAlignment;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher2(
      customDuration: customDuration ?? kTabScrollDuration,
      transitionBuilder: (child, animation) => SizeTransition(
        sizeFactor: animation,
        axis: axis,
        axisAlignment: axisAlignment,
        child: child,
      ),
      showChild: showChild,
      child2: child2,
      child: child,
    );
  }
}
