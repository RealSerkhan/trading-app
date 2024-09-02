// ignore_for_file: library_private_types_in_public_api

import 'package:beneficiary/app/app_router.dart';
import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class Resources {
  static late _Vector vectors;
  static late _Raster rasters;
  static late _Lottie lottie;

  static AppRouter get router => GetIt.I<AppRouter>();
  static GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  static late ThemeEnum theme;

  static void setup(ThemeEnum theme) {
    Resources.theme = theme;
    vectors = _Vector(theme == ThemeEnum.Dark);
    rasters = _Raster(theme == ThemeEnum.Dark);
    lottie = _Lottie();

  }
}

class _Vector {
  final bool isDark;
  _Vector(this.isDark);

  String get logo => 'assets/vectors/logo.svg';
  String get eyeOff => 'assets/vectors/eye_off.svg';
  String get eyeOn => 'assets/vectors/eye_on.svg';

  String get camera => 'assets/vectors/camera.svg';
  String get success => 'assets/vectors/success.svg';

  String get splashLogo => isDark
      ? 'assets/vectors/splash_logo_dark.svg'
      : 'assets/vectors/splash_logo.svg';
  String get attachment => 'assets/vectors/attachment.svg';
  String get gallery => 'assets/vectors/gallery.svg';
  String get arrowDown => 'assets/vectors/arrow_down.svg';
  String get arrowForward => 'assets/vectors/arrow_forward.svg';
  String get dashboard => 'assets/vectors/dashboard.svg';
  String get back => 'assets/vectors/back.svg';
  String get phone => 'assets/vectors/phone.svg';

  //bottom bar outline icons
  String get homeOutline => 'assets/vectors/home_outline.svg';
  String get saveOutline => 'assets/vectors/heart.svg';

  //bottom bar bold icons
  String get homeColor => 'assets/vectors/home_color.svg';
  String get savedColor => 'assets/vectors/heart_color.svg';
}

class _Raster {
  final bool isDark;
  _Raster(this.isDark);
  String get appIcon => 'assets/rasters/app_icon.png';
  String get loginImg => 'assets/rasters/login_img.png';

  String get background => 'assets/rasters/background.png';
  String get onboard2 => 'assets/rasters/onboard_2.png';
  String get onboard3 => 'assets/rasters/onboard_3.png';
}

class _Lottie {
//common
  String get error => 'assets/lottie/error.json';
}

