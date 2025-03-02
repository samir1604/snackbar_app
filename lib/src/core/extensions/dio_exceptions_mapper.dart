import 'package:dio/dio.dart';

import '../../common/common.dart';
import '../core.dart';

extension DioExceptionsMapper on DioException {
  HttpClientException toHttpClientException(StackTrace stackTrace) {
    return switch (type) {
      DioExceptionType.connectionTimeout => HttpClientException(
          message: _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.sendTimeout => HttpClientException(
          message:_getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.receiveTimeout => HttpClientException(
          message:
          _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.badCertificate => HttpClientException(
          message: _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.badResponse => HttpClientException(
          message: _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.cancel => HttpClientException(
          message: _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.connectionError => HttpClientException(
          message:_getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.unknown => HttpClientException(
          message:_getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
    };
  }

  String _getMessageForStatusCode(int? statusCode) {
    return switch (statusCode) {
      HttpStatusCode.badRequest => HttpStatusMessages.badRequest400,
      HttpStatusCode.unauthorized => HttpStatusMessages.unauthorized401,
      HttpStatusCode.forbidden => HttpStatusMessages.forbidden403,
      HttpStatusCode.notFound => HttpStatusMessages.notFound404,
      HttpStatusCode.internalServerError => HttpStatusMessages.internalServerError500,
      HttpStatusCode.serviceUnavailable => HttpStatusMessages.serviceUnavailable503,
      HttpStatusCode.invalidToken => HttpStatusMessages.invalidToken498,
      _ => 'Unknown error. Please try again later'
    };
  }
}
