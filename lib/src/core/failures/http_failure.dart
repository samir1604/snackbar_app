import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core.dart';

part 'http_failure.freezed.dart';

part 'http_failure.g.dart';

@freezed
class HttpFailure with _$HttpFailure {
  const HttpFailure._();

  const factory HttpFailure({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'detail') required String detail,
    @JsonKey(name: 'errors') List<HttpError>? errors,
    @JsonKey(name: 'traceId') String? traceId,
  }) = _HttpFailure;

  factory HttpFailure.fromJson(Map<String, dynamic> json) =>
      _$HttpFailureFromJson(json);

  factory HttpFailure.fromDio(DioException err) {
    final Map<String, dynamic> data =
        err.response?.data as Map<String, dynamic>;

    if (data.isNotEmpty) return HttpFailure.fromJson(data);

    return err.mapToHttpFailure();
  }
}
