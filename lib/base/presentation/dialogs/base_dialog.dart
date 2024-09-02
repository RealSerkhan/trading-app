import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:flutter/material.dart';

class BaseDialog extends StatelessWidget {
  const BaseDialog._({
    required this.child,
    this.title,
    this.titleWidget,
    this.contentText,
    this.hightFactor,
    this.widthFactor,
  }) : assert(
            (title != null && titleWidget == null) ||
                (title == null && titleWidget != null),
            'You can\'t add title and title widget at the same time');

  final String? title;
  final Widget? titleWidget;
  final String? contentText;
  final Widget child;
  final double? hightFactor;
  final double? widthFactor;

  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    String? title,
    Widget? titleWidget,
    String? contentText,
    double? hightFactor,
    double? widthFactor,
    bool barrierDismissible = true,
  }) =>
      showDialog(
        barrierColor: const Color(0x8AE5E5E5),
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (context) => BaseDialog._(
          title: title,
          titleWidget: titleWidget,
          contentText: contentText,
          hightFactor: hightFactor,
          widthFactor: widthFactor,
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: title != null
          ? Text(title!, textAlign: TextAlign.center)
          : titleWidget,
      titlePadding: EdgeInsets.only(
        left: 16.0.w,
        right: 16.0.w,
        top: 16.0.h,
        bottom: 4.0.h,
      ),
      contentPadding: EdgeInsets.only(
        left: 16.0.w,
        right: 16.0.w,
        bottom: 24.0.h,
      ),
      children: [
        if (contentText != null)
          Padding(
            padding: EdgeInsets.only(bottom: 16.0.h),
            child: Text(
              contentText!,
              style: context.textTheme.title1
                  .copyWith(color: context.colors.textBlackKnight),
              textAlign: TextAlign.center,
            ),
          ),
        SizedBox(
          height:
              hightFactor != null ? context.fullHeight * hightFactor! : null,
          width: widthFactor != null ? context.fullWidth * widthFactor! : null,
          child: child,
        ),
      ],
    );
  }
}
