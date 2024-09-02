import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:theme/theme.dart';

class AppTypographyData extends Equatable {
  const AppTypographyData({
    required this.heading1,
    required this.heading2,
    required this.heading3,
    required this.title1,
    required this.title2,
    required this.body1,
    required this.body2,
    required this.title3,
    required this.body3,
    required this.body4,
    required this.smallTextBold,
    required this.smallTextRegular,
  });

  factory AppTypographyData.regular(AppColorsData colors) => AppTypographyData(
        heading1: TextStyle(
          color: colors.textBlackKnight,
          fontSize: 64.sp,
          fontWeight: FontWeight.w700,
        ),
        heading2: TextStyle(
          color: colors.textBlackKnight,
          fontSize: 56.sp,
          fontWeight: FontWeight.w400,
        ),
        heading3: TextStyle(
          color: colors.textBlackKnight,
          fontSize: 48.sp,
          fontWeight: FontWeight.w400,
        ),
        title1: TextStyle(
          color: colors.textBlackKnight,
          fontSize: 32.sp,
          fontWeight: FontWeight.w400,
        ),
        title2: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w400,
          color: colors.textBlackKnight,
        ),
        title3: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          color: colors.textBlackKnight,
        ),
        body1: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          color: colors.textBlackKnight,
        ),
        body2: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: colors.textBlackKnight,
        ),
        body3: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: colors.textBlackKnight,
        ),
        body4: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: colors.textBlackKnight,
        ),
        smallTextBold: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
          color: colors.textBlackKnight,
        ),
        smallTextRegular: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: colors.textBlackKnight,
        ),
      );
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle heading3;
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;
  final TextStyle body4;

  final TextStyle smallTextBold;
  final TextStyle smallTextRegular;

  @override
  List<Object?> get props => [
        title1.named('heading'),
        title2.named('title'),
        body2.named('subtitle'),
      ];
}
