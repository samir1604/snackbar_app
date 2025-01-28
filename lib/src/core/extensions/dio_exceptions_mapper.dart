import 'dart:io';

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
      HttpStatus.badRequest => HttpExceptionMessages.badRequest400,
      HttpStatus.unauthorized => HttpExceptionMessages.unauthorized401,
      HttpStatus.forbidden => HttpExceptionMessages.forbidden403,
      HttpStatus.notFound => HttpExceptionMessages.notFound404,
      HttpStatus.internalServerError => HttpExceptionMessages.internalServerError500,
      HttpStatus.serviceUnavailable => HttpExceptionMessages.serviceUnavailable503,
      NetworkSettings.invalidToken => HttpExceptionMessages.invalidToken489,
      _ => 'Unknown error. Please try again later'
    };
  }
}
