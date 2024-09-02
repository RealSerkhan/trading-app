import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';

class PageDots extends StatelessWidget {
  const PageDots(
      {required this.selectedIndex,
      required this.onSelected,
      required this.length,
      super.key});
  final int selectedIndex;
  final Function(int) onSelected;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) => InkWell(
          onTap: () {
            onSelected.call(index);
          },
          child: AnimatedContainer(
            margin: EdgeInsets.symmetric(horizontal: 3.w),
            duration: const Duration(milliseconds: 300),
            height: 10.h,
            width: 10.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selectedIndex == index
                  ? context.colors.primaryColor
                  : context.colors.borderColor,
            ),
          ),
        ),
      ),
    );
  }
}
