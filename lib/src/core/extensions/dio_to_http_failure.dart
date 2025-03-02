import 'package:dio/dio.dart';

import '../../common/common.dart';
import '../core.dart';

extension DioToHttpFailure on DioException {
  HttpFailure mapToHttpFailure(StackTrace? trace) {
    final traceInfo = trace.toString().split('\n').first;

    if (type == DioExceptionType.badResponse) {
      final errorResponse = HttpFailure.fromJson(response?.data as Map<String, dynamic>);

      if(errorResponse != null) {
        return errorResponse;
      }

      return HttpFailure(
        type:
            _getTypeFromHttp(response?.statusCode ?? HttpStatusCode.badRequest),
        title: TextStrings.titleException,
        status: response?.statusCode ?? HttpStatusCode.badRequest,
        detail: _getDetailFromHttp(
            response?.statusCode ?? HttpStatusCode.badRequest),
        traceId: traceInfo,
      );
    }

    return HttpFailure(
      type: _getTypeFromDio(type),
      title: TextStrings.titleException,
      status: _getStatusFromDio(type),
      detail: _getDetailFromDio(type),
      traceId: traceInfo,
    );
  }

  static int _getStatusFromDio(DioExceptionType dioType) => switch (dioType) {
        DioExceptionType.badResponse => HttpStatusCode.badRequest,
        DioExceptionType.connectionTimeout => HttpStatusCode.requestTimeout,
        DioExceptionType.sendTimeout => HttpStatusCode.requestTimeout,
        DioExceptionType.receiveTimeout => HttpStatusCode.requestTimeout,
        DioExceptionType.connectionError => HttpStatusCode.connectionError,
        DioExceptionType.unknown => HttpStatusCode.unknown,
        DioExceptionType.cancel => HttpStatusCode.cancel,
        DioExceptionType.badCertificate => HttpStatusCode.badCertificate,
      };

  static String _getDetailFromDio(DioExceptionType dioType) =>
      switch (dioType) {
        DioExceptionType.badResponse => HttpStatusMessages.badRequest400,
        DioExceptionType.connectionTimeout =>
          HttpStatusMessages.connectionTimeout_406,
        DioExceptionType.sendTimeout => HttpStatusMessages.sendTimeout_407,
        DioExceptionType.receiveTimeout =>
          HttpStatusMessages.receiveTimeout_408,
        DioExceptionType.connectionError =>
          HttpStatusMessages.connectionError_400,
        DioExceptionType.unknown => HttpStatusMessages.unknown_500,
        DioExceptionType.cancel => HttpStatusMessages.cancel_402,
        DioExceptionType.badCertificate =>
          HttpStatusMessages.badCertificate_401,
      };

  static String _getTypeFromDio(DioExceptionType dioType) => switch (dioType) {
        DioExceptionType.badResponse => RfcUrls.badResponse,
        DioExceptionType.connectionTimeout => RfcUrls.connectionTimeout,
        DioExceptionType.sendTimeout => RfcUrls.sendTimeout,
        DioExceptionType.receiveTimeout => RfcUrls.receiveTimeout,
        DioExceptionType.connectionError => RfcUrls.connectionError,
        DioExceptionType.unknown => RfcUrls.unknown,
        DioExceptionType.cancel => RfcUrls.cancel,
        DioExceptionType.badCertificate =>
          'https://tools.ietf.org/html/rfc2838',
      };

  static String _getTypeFromHttp(int statusCode) {
    final type = switch (statusCode) {
      HttpStatusCode.badRequest => RfcUrls.badRequest,
      HttpStatusCode.forbidden => RfcUrls.forbidden,
      HttpStatusCode.notFound => RfcUrls.notFound,
      HttpStatusCode.methodNotAllowed => RfcUrls.methodNotAllowed,
      HttpStatusCode.requestTimeout => RfcUrls.requestTimeout,
      HttpStatusCode.conflict => RfcUrls.conflict,
      HttpStatusCode.notImplemented => RfcUrls.notImplemented,
      HttpStatusCode.badGateway => RfcUrls.badGateway,
      HttpStatusCode.serviceUnavailable => RfcUrls.serviceUnavailable,
      HttpStatusCode.unauthorized => RfcUrls.unauthorized,
      HttpStatusCode.invalidToken => RfcUrls.invalidToken,
      _ => null,
    };

    return type ?? RfcUrls.internalServerError;
  }

  static String _getDetailFromHttp(int statusCode) => switch (statusCode) {
        HttpStatusCode.badRequest => HttpStatusMessages.badRequest400,
        HttpStatusCode.forbidden => HttpStatusMessages.forbidden403,
        HttpStatusCode.notFound => HttpStatusMessages.notFound404,
        HttpStatusCode.methodNotAllowed =>
          HttpStatusMessages.methodNotAllowed405,
        HttpStatusCode.requestTimeout => HttpStatusMessages.requestTimeout408,
        HttpStatusCode.conflict => HttpStatusMessages.conflict409,
        HttpStatusCode.notImplemented => HttpStatusMessages.notImplemented501,
        HttpStatusCode.badGateway => HttpStatusMessages.badGateway502,
        HttpStatusCode.serviceUnavailable =>
          HttpStatusMessages.serviceUnavailable503,
        HttpStatusCode.unauthorized => HttpStatusMessages.unauthorized401,
        HttpStatusCode.invalidToken => HttpStatusMessages.invalidToken498,
        _ => HttpStatusMessages.internalServerError500,
      };
}
