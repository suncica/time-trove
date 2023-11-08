import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final Logger _logger = Logger();
void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
  if (kDebugMode) {
    _logger.d(message, error, stackTrace);
  }
}
