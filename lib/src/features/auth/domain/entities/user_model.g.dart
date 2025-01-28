// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      userName: json['userName'] as String?,
      role: Role.fromJson(json['role'] as String),
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userName': instance.userName,
      'role': Role.toJson(instance.role),
      'picture': instance.picture,
    };
