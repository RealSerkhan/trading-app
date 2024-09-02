import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget(
      {required this.child, this.hasGradient = true, super.key});
  final Widget child;
  final bool hasGradient;

  @override
  Widget build(BuildContext context) {
    if (!hasGradient) {
      return child;
    }
    return ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [context.colors.grey, const Color(0xff448361)],
            ).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
        child: child);
  }
}
