import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName => kReleaseMode ? '.env.production' : '.env.development';

  static String get environment => dotenv.env['ENVIRONMENT'] ?? 'ENVIRONMENT not specified';

  static String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? 'API_BASE_URL not specified';
}