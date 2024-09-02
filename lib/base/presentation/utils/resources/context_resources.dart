
// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'package:theme/theme.dart';

// abstract class ContextResources {
//   const ContextResources._();

//   /// Returns the app localizations
//   /// It should be used only in spacial cases when the context is not available
//   /// It's recommended to use `context.localizations` extension method.
//   /// This property doesn't notify the widget with language changes,
//   /// so if the language changes or the localization are load async,
//   /// the app language will not be consistent.
//   static late AppLocalizations localizations;

//   /// Returns the app theme data
//   /// It should be used only in spacial cases when the context is not available
//   /// It's recommended to use `context.theme` extension method.
//   /// This property doesn't notify the widget with theme changes,
//   /// so if the theme changes the app theme will not be consistent.
//   static late AppThemeData theme;
//   static late AppTypographyData textTheme;
//   static late context.colorsData colors;

//   /// Returns the app router
//   /// It should be used only in spacial cases when the context is not available
//   /// and we want to navigate with top level router.
//   /// It's recommended to use `context.router` extension method.
//   /// note: navigating without context is not recommended in nested navigation
//   /// unless you use navigate instead of push and you provide a full hierarchy.
//   /// e.g `Resources.router.navigate(SecondRoute(children: [SubChild2Route()])`
//   static AppRouter get router => GetIt.I<AppRouter>();

//   static void setup(BuildContext appContext) {
//     localizations = appContext.localizations;
//     theme = appContext.theme;
//     textTheme = theme.typography;
//     colors = theme.colors;
//   }
// }
