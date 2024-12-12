import 'dart:io';

import 'package:dio/dio.dart';

import '../../common/constants/app_network_settings.dart';
import '../exceptions/failure.dart';

extension DioExceptionsMapper on DioException {
  Failure toFailure(StackTrace stackTrace) {
    return switch (type) {
      DioExceptionType.connectionTimeout => Failure(
          message: _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.sendTimeout => Failure(
          message:_getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.receiveTimeout => Failure(
          message:
          _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.badCertificate => Failure(
          message: _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.badResponse => Failure(
          message: _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.cancel => Failure(
          message: _getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.connectionError => Failure(
          message:_getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
      DioExceptionType.unknown => Failure(
          message:_getMessageForStatusCode(response?.statusCode),
          exception: this,
          stackTrace: stackTrace,
        ),
    };
  }

  String _getMessageForStatusCode(int? statusCode) {
    return switch (statusCode) {
      HttpStatus.badRequest => 'Bad request. Please try again later',
      HttpStatus.unauthorized => 'Unauthorized. Please try again later',
      HttpStatus.forbidden => 'Forbidden. Please try again later',
      HttpStatus.notFound => 'Not found. Please try again later',
      HttpStatus.internalServerError => 'Internal Server Error. Please try again later',
      HttpStatus.serviceUnavailable => 'Service unavailable. Please try again later',
      AppNetworkSettings.invalidToken => 'Refresh token expired. Please try again later',
      _ => 'Unknown error. Please try again later'
    };
  }
}
