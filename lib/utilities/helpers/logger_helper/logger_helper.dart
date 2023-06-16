part of './logger.dart';

class LoggerHelper {
  const LoggerHelper._();

  static bool _isEnabled = false;

  static void setEnableLogger(bool enable) {
    _isEnabled = enable;
  }

  static void info(message) {
    _log(LogLevel.info, message);
  }

  static void debug(message) {
    _log(LogLevel.debug, message);
  }

  static void warning(message) {
    _log(LogLevel.warning, message);
  }

  static void error(message) {
    _log(LogLevel.error, message);
  }

  static void _log(LogLevel logLevel, message) {
    if (_isEnabled) {
      _stringifyMessage(message)
          .split('\n')
          .forEach((element) => developer.log(element, name: logLevel.name));
    }
  }

  static String _stringifyMessage(message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      final encoder =
          JsonEncoder.withIndent('  ', (object) => object.toString());
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }
}
