// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

// ignore: must_be_immutable
class SmallWidth extends StatelessWidget {
  double width;
  SmallWidth({
    super.key,
    this.width = 6,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
    );
  }
}
