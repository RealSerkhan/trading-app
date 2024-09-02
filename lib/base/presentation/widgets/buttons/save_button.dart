import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:beneficiary/base/presentation/utils/ui_utils/animations/switchers_animation.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key, required this.onClick, required this.isSaved});
  final Function() onClick;
  final bool isSaved;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () => onClick.call(),
      child: Container(
        height: 36.h,
        width: 36.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.sp),
            color: context.colors.secondaryBluishWhite),
        child: Center(
          child: AnimatedSwitcher2(
            showChild: true,
            child: SvgPicture.asset(
              height: 18.h,
              isSaved
                  ? Resources.vectors.savedColor
                  : Resources.vectors.saveOutline,
              // ignore: deprecated_member_use
              color: context.colors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
