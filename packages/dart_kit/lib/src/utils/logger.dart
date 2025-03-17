// ignore_for_file: avoid_classes_with_only_static_members

import 'package:dart_kit/src/utils/crash_report_tool.dart';
import 'package:dart_kit/src/utils/printable_trace.dart';
import 'package:logger/logger.dart' as dart_log;
import 'package:logger/logger.dart';
import 'package:stack_trace/stack_trace.dart';

/// base logger class that wrap reporting tool strategy and logging strategy.
abstract class Logger {
  static CrashReportTool _crashReportTool = NoOpsCrashReportTool();

  static final dart_log.Logger _instance = dart_log.Logger(
    printer: _CrashReportWrappedPrinter(PrettyPrinter(), _crashReportTool),
    filter: _DisplayAllLogFilter(),
    output: MultiOutput([ConsoleOutput()]),
  );

  static Future init({required CrashReportTool crashReportTool}) {
    _crashReportTool = crashReportTool;
    return _crashReportTool.init();
  }

  static void v(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.trace, message, error: error, stackTrace: stackTrace);

  static void d(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.debug, message, error: error, stackTrace: stackTrace);

  static void i(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.info, message, error: error, stackTrace: stackTrace);

  static void w(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.warning, message, error: error, stackTrace: stackTrace);

  static void e(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.error, message, error: error, stackTrace: stackTrace);

  static void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.fatal, message, error: error, stackTrace: stackTrace);

  static Future<void> fatal({dynamic error, StackTrace? stackTrace}) async {
    d('Fatal', error, stackTrace);
    await _crashReportTool.logFatal(error, stackTrace);
  }
}

class _CrashReportWrappedPrinter extends LogPrinter {
  _CrashReportWrappedPrinter(this._printer, this._crashReportTool);

  final LogPrinter _printer;
  final CrashReportTool _crashReportTool;

  @override
  Future<void> init() async {
    await _printer.init();
    return super.init();
  }

  @override
  Future<void> destroy() async {
    await _printer.destroy();
    return super.destroy();
  }

  @override
  List<String> log(LogEvent event) {
    late final dart_log.LogEvent sanitizedEvent = dart_log.LogEvent(
      event.level,
      event.message,
      error: event.error,
      stackTrace: event.stackTrace ?? _currentStacktrace(),
    );

    switch (event.level) {
      case Level.trace:
      case Level.debug:
      case Level.off:
      case Level.info:
        break;
      case Level.warning:
      case Level.error:
      case Level.fatal:
        _crashReportTool.logNonFatal(sanitizedEvent);
        break;
      case Level.all:
        // TODO: Handle this case.
        break;

      case Level.verbose:
        // TODO: Handle this case.
        break;
      case Level.wtf:
        // TODO: Handle this case.
        break;
      case Level.nothing:
        // TODO: Handle this case.
        break;
    }
    return _printer.log(sanitizedEvent);
  }

  StackTrace _currentStacktrace() {
    final trace = Trace.current(4);
    final frames = trace.frames;
    final newFrames = frames.map(
      (frame) => Frame(
        frame.uri,
        frame.line,
        frame.column,
        frame.member,
      ),
    );
    return PrintableTrace(newFrames);
  }
}

class _DisplayAllLogFilter extends LogFilter {
  // TODO(abd): In the future it should be filtered based on the env
  @override
  bool shouldLog(LogEvent event) => true;
}
