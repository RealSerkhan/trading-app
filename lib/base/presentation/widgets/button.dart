import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:beneficiary/base/presentation/widgets/gradient_widget.dart';
import 'package:beneficiary/base/presentation/widgets/loading_indicator.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:flutter_svg/svg.dart';
import 'package:theme/theme.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

enum ButtonState { inactive, active, loading, error, success }

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.text,
      required this.onPressed,
      this.child,
      this.iconWidget,
      this.iconPath,
      this.textStyle,
      this.textColor,
      this.fontWeight,
      this.state = ButtonState.active,
      this.fillWidth = true,
      this.isActive = true,
      this.color,
      this.borderRadius,
      this.height,
      this.padding,
      this.borderSide,
      // this.vibrationType,
      this.textHasGradient = false,
      super.key});

  final String text;
  final Color? textColor;
  final TextStyle? textStyle;
  final FontWeight? fontWeight;
  final String? iconPath;
  final Widget? child;
  final Widget? iconWidget;

  final ButtonState state;
  final Function()? onPressed;
  final Color? color;
  final EdgeInsets? padding;
  final double? height;
  final bool fillWidth;
  final bool isActive;
  final double? borderRadius;
  final BorderSide? borderSide;
  final bool textHasGradient;
  // final FeedbackType? vibrationType;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return IgnorePointer(
      ignoring: state == ButtonState.inactive || !isActive,
      child: ZoomTapAnimation(
        child: Container(
          height: height ?? 48.h,
          decoration: BoxDecoration(
            color: isActive
                ? color ?? context.colors.primaryColor
                : context.colors.grey,
            borderRadius: BorderRadius.circular(12.sp),
          ),
          child: SizedBox(
            height: height ?? 48.h,
            width: fillWidth ? double.infinity : null,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: padding ??
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 10),
                    side: borderSide ?? BorderSide.none),
              ),
              onPressed: onPressed,
              child: Padding(
                padding: padding ?? EdgeInsets.symmetric(horizontal: 0.w),
                child: child ??
                    _Child(
                      state: state,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (iconPath != null || iconWidget != null) ...[
                            iconWidget ??
                                SvgPicture.asset(iconPath!, height: 24.h),
                            SizedBox(width: 7.w)
                          ],
                          Flexible(
                            child: GradientWidget(
                              hasGradient: textHasGradient,
                              child: Text(
                                text,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: textStyle ??
                                    theme.typography.body2.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: textColor ?? theme.colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Child extends StatelessWidget {
  const _Child({required this.child, required this.state});
  final ButtonState state;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case ButtonState.inactive:
        return child;
      case ButtonState.active:
        return child;
      case ButtonState.loading:
        return const SizedBox(height: 25, width: 25, child: LoadingIndicator());
      case ButtonState.success:
        return Center(
            child: SvgPicture.asset(
          Resources.vectors.success,
          height: 16.h,
        ));
      case ButtonState.error:
        return child;
    }
  }
}
