import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';

class Body4 extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overFlow;
  final TextAlign? textAlign;
  final double? fontSize;
  final int? maxLines;
  final FontWeight? fontWeight;
  const Body4(
      {super.key,
      required this.text,
      this.color,
      this.overFlow = TextOverflow.ellipsis,
      this.textAlign = TextAlign.start,
      this.fontSize,
      this.maxLines = 1,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: context.textTheme.body4.copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: 0,
        overflow: overFlow,
      ),
      textAlign: textAlign,
    );
  }
}
