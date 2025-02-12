// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenModelImpl _$$RefreshTokenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenModelImpl(
      accessToken: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$RefreshTokenModelImplToJson(
        _$RefreshTokenModelImpl instance) =>
    <String, dynamic>{
      'token': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
