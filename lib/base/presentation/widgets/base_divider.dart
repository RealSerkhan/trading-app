import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

class BaseDivider extends StatelessWidget {
  const BaseDivider({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: 16.w,
      indent: 16.w,
      height: height ?? 0,
    );
  }
}
