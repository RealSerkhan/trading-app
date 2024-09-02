import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer(
      {required this.child, this.margin, this.padding, super.key});
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding ?? EdgeInsets.all(16.h),
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12.sp)),
      child: child,
    );
  }
}
