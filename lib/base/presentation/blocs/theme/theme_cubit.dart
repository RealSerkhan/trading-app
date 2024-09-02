import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/base/domain/usecases/change_theme_use_case.dart';
import 'package:beneficiary/base/domain/usecases/get_theme_use_case.dart';
import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';

@singleton
class ThemeCubit extends Cubit<ThemeEnum> {
  ThemeCubit({
    required this.getDefaultThemeMode,
    required this.changeThemeMode,
  }) : super(ThemeEnum.Light);
  final GetDefaultThemeMode getDefaultThemeMode;
  initTheme(BuildContext context) {
    final result = getDefaultThemeMode.createObservable(NoParams());
    result.listen((theme) {
      if (theme == ThemeEnum.SystemDefault) {
        return _detectSystemThemeMode(context);
      }
      emit(theme);
    });
  }

  final ChangeThemeModeUseCase changeThemeMode;

  void changeTheme(ThemeEnum theme, {bool save = true}) async {
    if (save) {
      await changeThemeMode(theme);

      emit(theme);
    } else {
      emit(theme);
    }
  }

  void _detectSystemThemeMode(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final theme =
        brightness == Brightness.dark ? ThemeEnum.Dark : ThemeEnum.Light;
    changeThemeMode(theme);
    emit(theme);
  }
}
