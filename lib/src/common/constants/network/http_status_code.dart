import 'dart:io';

final class HttpStatusCode {
  const HttpStatusCode._();

  /// Http Local Code
  static const int connectionTimeout = -406;
  static const int sendTimeout = -407;
  static const int receiveTimeout = -408;
  static const int badCertificate = -401;
  static const int cancel = -402;
  static const int connectionError = -400;
  static const int unknown = -500;

  /// Http Status Code
  static const int badRequest = HttpStatus.badRequest;
  static const int forbidden = HttpStatus.forbidden;
  static const int notFound = HttpStatus.notFound;
  static const int methodNotAllowed = HttpStatus.methodNotAllowed;
  static const int requestTimeout = HttpStatus.requestTimeout;
  static const int conflict = HttpStatus.conflict;
  static const int notImplemented = HttpStatus.notImplemented;
  static const int badGateway = HttpStatus.badGateway;
  static const int serviceUnavailable = HttpStatus.serviceUnavailable;
  static const int unauthorized = HttpStatus.unauthorized;
  static const int invalidToken = 498;
  static const int internalServerError = HttpStatus.internalServerError;
}