// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInResponseImpl _$$SignInResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignInResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      username: json['username'] as String,
      role: Role.fromJson(json['role'] as String),
      picture: json['foto'] as String?,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$SignInResponseImplToJson(
        _$SignInResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'role': Role.toJson(instance.role),
      'foto': instance.picture,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
