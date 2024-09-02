import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/widgets.dart';
import 'package:beneficiary/app/app.dart';
import 'package:beneficiary/base/presentation/utils/logging/app_bloc_observer.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final app = App();
      await app.initSdks();
      await Logger.init(crashReportTool: _crashReportTool);
      Bloc.observer = AppBlocObserver();
      WidgetsFlutterBinding.ensureInitialized();
      runApp(await builder());
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}

CrashReportTool get _crashReportTool => NoOpsCrashReportTool();
