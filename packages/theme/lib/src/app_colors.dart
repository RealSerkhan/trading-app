import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.textBlackKnight,
    required this.primaryColor,
    required this.grey,
    required this.lightGrey,
    required this.background,
    required this.contentColor,
    required this.borderColor,
    required this.white,
    required this.textFieldColor,
    required this.textSubmarineGrey,
    required this.secondaryBluishWhite,
    required this.secondayErrigaleWhite,
    required this.red,
    required this.green,
    required this.lightBlue,
  });

  factory AppColorsData.light() => const AppColorsData(
        textBlackKnight: Color(0xff000F19),
        primaryColor: Color(0xff0175CC),
        grey: Color(0xff909599),
        lightGrey: Color(0xffF9FAFA),
        background: Color(0xffFAFBFD),
        contentColor: Color(0xff7A7A7A),
        borderColor: Color(0xffE3E6E8),
        white: Color(0xffFFFFFF),
        textFieldColor: Color(0xffF5F5F5),
        textSubmarineGrey: Color(0xff464E53),
        secondaryBluishWhite: Color(0xffF5FBFF),
        secondayErrigaleWhite: Color(0xffF2F2F3),
        red: Color(0xffEB5757),
        green: Color(0xff00A855),
        lightBlue: Color(0xff24A7DD),
      );

  factory AppColorsData.dark() => const AppColorsData(
        textBlackKnight: Color(0xff051F37),
        primaryColor: Color(0xff0175CC),
        grey: Color(0xff596FE2),
        lightGrey: Color(0xff7F91EF),
        background: Color(0xffF8F8F8),
        contentColor: Color(0xffC9D0D2),
        borderColor: Color(0xff989FA0),
        white: Color(0xffFFFFFF),
        textFieldColor: Color(0xffF5F5F5),
        textSubmarineGrey: Color(0xffED7581),
        secondaryBluishWhite: Color(0xff51F09E),
        secondayErrigaleWhite: Color(0xffD4DE41),
        red: Color(0xffEB5757),
        green: Color(0xff00A855),
        lightBlue: Color(0xff24A7DD),
      );

  final Color textBlackKnight;
  final Color primaryColor;
  final Color grey;
  final Color lightGrey;
  final Color background;
  final Color contentColor;
  final Color borderColor;
  final Color white;
  final Color textFieldColor;
  final Color textSubmarineGrey;
  final Color secondayErrigaleWhite;
  final Color secondaryBluishWhite;
  final Color red;
  final Color green;
  final Color lightBlue;

  @override
  List<Object?> get props => [
        textBlackKnight.named('primaryColor'),
        primaryColor.named('accentColor'),
      ];
}

class AppColors {
  static const Color mainColor = Color(0xffF1A139);
  static const Color backgroundColor = Color(0xffFAFBFD);
  static const Color borderColor = Color(0xffF5F6FA);
  static const Color white = Colors.white;
  static const Color titleColor = Color(0xff323334);
  static const Color contentColor = Color(0xff959AB4);
  static const Color blue = Color(0xff3A5CF6);
  static const Color textFieldColor = Color(0xffF5F5F5);
  static const Color red = Color(0xffED7581);
  static const Color green = Color(0xffD4DE41);
  static const Color cyan = Color(0xff51F09E);
  static const Color purple = Color(0xff8B36E0);
}
