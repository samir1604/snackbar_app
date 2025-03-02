import '../../../core/core.dart';

class NetworkSettings {
  NetworkSettings._();

  static String baseUrl = Environment.apiBaseUrl;

  /// TODO: 'Release mode, change duration to higher numbers'
  static Duration get connectTimeout => Duration(seconds: 5);

  static Duration get receiveTimeout => Duration(seconds: 5);

  static Duration get sendTimeout => Duration(seconds: 5);

  static Map<String, dynamic> get requestOptions => {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

  static const String authorizationKey = 'Authorization';
  static const String refreshTokenKey = 'refreshToken';
}
