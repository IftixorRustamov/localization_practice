
import 'dart:developer';
import 'package:logger/logger.dart';

class LogService {
  static final Logger _logger = Logger(
    filter: DevelopmentFilter(),
    printer: PrettyPrinter(),
  );

  static void d(String message) {
    log("Debug: $message"); // Add this for testing
    _logger.d(message);
  }

  static void i(String message) {
    log("Info: $message"); // Add this for testing
    _logger.i(message);
  }

  static void w(String message) {
    log("Warning: $message"); // Add this for testing
    _logger.w(message);
  }

  static void e(String message) {
    log("Error: $message"); // Add this for testing
    _logger.e(message);
  }
}
