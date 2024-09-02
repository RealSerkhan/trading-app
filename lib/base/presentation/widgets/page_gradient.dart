import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';

class PageGradient extends StatelessWidget {
  const PageGradient({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Resources.rasters.background),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
