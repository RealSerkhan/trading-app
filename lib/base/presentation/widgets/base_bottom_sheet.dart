// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:flutter_svg/svg.dart';

class BaseBottomSheet extends StatelessWidget {
  const BaseBottomSheet({
    required this.title,
    required this.description,
    required this.buttons,
    this.action,
    this.icon,
    super.key,
  });

  final String title;
  final Widget? action;
  final String? icon;
  final String description;
  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16))),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(height: 20.h),
        Stack(
          children: [
            Center(
              child: Text(
                title,
                style: context.textTheme.body1,
              ),
            ),
            Row(
              children: [const Spacer(), action ?? const SizedBox.shrink()],
            )
          ],
        ),
        Divider(
          height: 30.h,
          color: context.colors.contentColor,
        ),
        if (icon != null) ...[
          SvgPicture.asset(
            icon!,
            color: context.colors.grey,
          ),
          SizedBox(height: 10.h),
        ],
        Text(
          description,
          style: context.textTheme.title3.copyWith(fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 20.h),
        ...buttons,
        SizedBox(
          height: context.mediaQuery.viewPadding.bottom + 20.h,
        )
      ]),
    );
  }
}
