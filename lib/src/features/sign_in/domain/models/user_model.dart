import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/enums/role_enum.dart';

part 'user_model.g.dart';

@JsonSerializable()
final class UserModel extends Equatable {
  const UserModel({
    required this.id,
    required this.name,
    this.userName,
    required this.role,
    this.picture,
  });

  final int id;
  final String name;
  final String? userName;
  @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson)
  final Role role;
  final String? picture;

  @override
  List<Object?> get props => [id, name];

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
