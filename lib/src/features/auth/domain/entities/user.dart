import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../common/common.dart';

part 'user.g.dart';

@JsonSerializable()
final class User extends Equatable {
  const User({
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

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

}
