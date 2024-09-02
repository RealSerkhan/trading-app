import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer(
      {required this.child, this.baseColor, this.highlightColor, super.key});
  final Widget child;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: baseColor ?? context.colors.lightGrey,
        highlightColor: highlightColor ?? Colors.white,
        child: child);
  }
}
