import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_error.freezed.dart';

part 'http_error.g.dart';

@freezed
class HttpError with _$HttpError {
  const HttpError._();

  const factory HttpError({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'description') required String description,
  }) = _HttpError;

  factory HttpError.fromJson(Map<String, dynamic> json) =>
      _$HttpErrorFromJson(json);
}
