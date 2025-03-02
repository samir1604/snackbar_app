// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HttpFailureImpl _$$HttpFailureImplFromJson(Map<String, dynamic> json) =>
    _$HttpFailureImpl(
      type: json['type'] as String?,
      title: json['title'] as String,
      status: (json['status'] as num).toInt(),
      detail: json['detail'] as String,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => HttpError.fromJson(e as Map<String, dynamic>))
          .toList(),
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$$HttpFailureImplToJson(_$HttpFailureImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'errors': instance.errors,
      'traceId': instance.traceId,
    };
