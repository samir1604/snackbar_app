// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      role: Role.fromJson(json['rol'] as String),
      picture: json['picture'] as String?,
      accessToken: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'rol': Role.toJson(instance.role),
      'picture': instance.picture,
      'token': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
