import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

extension WidgetsListExtentsion on List<Widget> {
  List<Widget> animate() {
    return AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 375),
        childAnimationBuilder: (widget) => SlideAnimation(
              horizontalOffset: 50.0,
              child: FadeInAnimation(
                child: widget,
              ),
            ),
        children: this);
  }

  List<Widget> animateSlivers() {
    return AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 375),
        childAnimationBuilder: (widget) => widget,
        children: this);
  }

  Widget getAnimatedSliver() {
    return AnimationLimiter(
      child: SliverList(
        delegate: SliverChildListDelegate(
          animate(),
        ),
      ),
    );
  }
}
