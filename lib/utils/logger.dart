import 'package:logger/logger.dart';

Logger get _log => Logger(printer: PrettyPrinter(printTime: true));

/// Log a message at level [Level.debug].
void logD(dynamic message) => _log.d(message);

/// Log a message at level [Level.info].
void logI(dynamic message) => _log.i(message);

/// Log a message at level [Level.error].
void logE(dynamic message) => _log.e(message);