class AppNetworkSettings {
  AppNetworkSettings._();

  static const String baseUrl = 'https://wwww.example.com';

  static Duration get connectTimeout => Duration(seconds: 60);

  static Duration get receiveTimeout => Duration(seconds: 60);

  static Duration get sendTimeout => Duration(seconds: 60);

  static Map<String, dynamic> get requestOptions => {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

  static const String authorizationKey = 'Authorization';
  static const String refreshTokenKey = 'refreshToken';

  // HttpStatus doesn't have the code Invalid Token
  static const int invalidToken = 498;
}
