import 'package:beneficiary/features/beneficiary/presentation/bloc/beneficiaries_list/beneficiaries_list_cubit.dart';
import 'package:beneficiary/features/user/presentation/bloc/user/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beneficiary/base/di/di_entry_point.dart';
import 'package:beneficiary/base/presentation/blocs/app_settings/app_settings_bloc.dart';
import 'package:beneficiary/base/presentation/blocs/localization/localization_bloc.dart';
import 'package:beneficiary/base/presentation/blocs/navigator/navigator_cubit.dart';
import 'package:beneficiary/base/presentation/blocs/theme/theme_cubit.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';
import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';
import 'package:beneficiary/base/presentation/utils/localizations_generated/l10n.dart';
import 'package:beneficiary/base/presentation/utils/logging/route_observer.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:responsiveness/responsiveness.dart';
import 'package:theme/theme.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return LayoutBuilder(builder: (context, constraints) {
        SizeConfig.init(constraints, orientation);
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AppSettingsBloc(getIt())),
            BlocProvider<ThemeCubit>(
                create: (ctx) => getIt()..initTheme(context)),
            BlocProvider<LocalizationCubit>(
                create: (ctx) => getIt()..startObservingLanguage()),
            BlocProvider(create: (context) => AppNavigatorCubit()),
            BlocProvider(create: (context) => BeneficiariesListCubit(getIt())),
            BlocProvider(create: (context) => UserCubit(getIt())),
          ],
          child: BlocBuilder<LocalizationCubit, LanguageEnum>(
            builder: (context, lang) {
              late final AppColorsData appColors;
              appColors = AppColorsData.light();
              Resources.setup(ThemeEnum.Light);
              return AppTheme(
                data: AppThemeData(
                  colors: appColors,
                  typography: AppTypographyData.regular(appColors),
                ),
                child: MaterialApp.router(
                  scaffoldMessengerKey: Resources.scaffoldKey,
                  debugShowCheckedModeBanner: false,
                  routerDelegate: Resources.router.delegate(
                    navigatorObservers: () => [MyRouteObserver()],
                  ),
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: AppLocalizations.delegate.supportedLocales,
                  locale: lang.asLocale,
                  routeInformationParser: Resources.router.defaultRouteParser(),
                  builder: (context, child) => ScrollConfiguration(
                      behavior: const ScrollBehaviorModified(),
                      child: child ?? const SizedBox.shrink()),
                  theme: ThemeData(
                    useMaterial3: false,
                    fontFamily: 'Montserrat',
                    scaffoldBackgroundColor: appColors.background,
                    textTheme: const TextTheme(
                      displayLarge: TextStyle(
                          fontSize: 72.0, fontWeight: FontWeight.bold),
                      titleLarge: TextStyle(
                          fontSize: 36.0, fontStyle: FontStyle.normal),
                      bodyMedium:
                          TextStyle(fontSize: 14.0, fontFamily: 'Inter'),
                    ),
                    primarySwatch: Colors.blue,
                  ),
                ),
              );
            },
          ),
        );
      });
    });
  }
}

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return const ClampingScrollPhysics();
    }
  }
}
