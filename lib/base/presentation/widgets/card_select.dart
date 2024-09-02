import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:responsiveness/responsiveness.dart';

class CardSelect extends StatelessWidget {
  const CardSelect(
      {required this.title,
      required this.value,
      required this.onTap,
      super.key});
  final Function() onTap;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap.call,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: context.textTheme.smallTextRegular
                  .copyWith(height: 20.h / 12.w)),
          SizedBox(height: 9.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
            decoration: BoxDecoration(
                color: context.colors.background,
                border: Border.all(color: context.colors.textFieldColor),
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              value,
              style: context.textTheme.smallTextRegular.copyWith(
                color: context.colors.textBlackKnight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
