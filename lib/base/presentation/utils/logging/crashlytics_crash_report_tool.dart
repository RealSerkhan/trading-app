// import 'package:dart_kit/dart_kit.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:flutter/foundation.dart';
// import 'package:logger/logger.dart';

// /// A crash report tool that uses Firebase Crashlytics to report crashes.
// class CrashlyticsCrashReportTool extends CrashReportTool {
//   /// Initializes this crash report tool.
//   ///
//   /// This method should be called before using any other methods of this class.
//   @override
//   Future init() async {
//     FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
//     PlatformDispatcher.instance.onError = (error, stackTrace) {
//       logFatal(error, stackTrace);
//       return true;
//     };
//     // await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
//   }

//   /// Logs a fatal error to Firebase Crashlytics.
//   @override
//   Future logFatal(error, StackTrace? stackTrace) =>
//       FirebaseCrashlytics.instance.recordError(
//         error,
//         stackTrace,
//         fatal: true,
//       );

//   /// Logs a non-fatal error to Firebase Crashlytics.
//   @override
//   Future logNonFatal(LogEvent event) async {
//     await FirebaseCrashlytics.instance.setCustomKey('level', event.level.name);
//     await FirebaseCrashlytics.instance.recordError(
//       event.error ?? FlutterError(event.message),
//       event.stackTrace,
//       reason: event.message,
//     );
//   }
// }
