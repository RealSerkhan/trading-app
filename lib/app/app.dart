import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneficiary/base/di/di_entry_point.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class App {
  Future<void> initSdks() async {
    await dotenv.load(fileName: '.env');
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await Future.wait([
      initDependencyInjection(),
    ]);
  }
}
