import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(
      {super.key, required this.onTap, this.child, this.imagePath, this.color});
  final Function() onTap;
  final Widget? child;
  final String? imagePath;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
          width: 48.h,
          height: 48.h,
          padding: const EdgeInsets.all(12),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: color ?? const Color(0xFF014679),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child:
              child ?? SvgPicture.asset(imagePath ?? Resources.vectors.logo)),
    );
  }
}
