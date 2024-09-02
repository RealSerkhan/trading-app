import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CircleButton extends StatelessWidget {
  const CircleButton(
      {required this.icon,
      required this.onTap,
      this.color,
      this.border,
      this.height,
      this.width,
      this.padding,
      super.key});

  final Widget icon;
  final Function() onTap;
  final Color? color;
  final double? height;
  final double? width;
  final Border? border;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        height: height ?? 54.h,
        width: width ?? 54.h,
        decoration: BoxDecoration(
            border: border ??
                Border.all(
                    color: context.colors.textBlackKnight.withOpacity(0.6)),
            color: color,
            shape: BoxShape.circle),
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: icon,
        ),
      ),
    );
  }
}
