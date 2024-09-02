import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

// ignore: must_be_immutable
class BigHeight extends StatelessWidget {
  double height;
  BigHeight({
    super.key,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
    );
  }
}
