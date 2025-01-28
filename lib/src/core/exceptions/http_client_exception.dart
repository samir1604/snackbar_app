import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_client_exception.freezed.dart';

@freezed
class HttpClientException with _$HttpClientException implements Exception {
  const factory HttpClientException({
    required String message,
    int? statusCode,
    Exception? exception,
    @Default(StackTrace.empty) StackTrace stackTrace,
  }) = _HttpClientException;
}
