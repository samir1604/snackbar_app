import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/enums/role_enum.dart';
import '../../domain/entities/user.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const LoginModel._();

  const factory LoginModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'rol', fromJson: Role.fromJson, toJson: Role.toJson) required Role role,
    @JsonKey(name: 'picture') required String? picture,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'refreshToken') required String refreshToken,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  User mapTo() => User(
    id: id,
    name: name,
    userName: username,
    role: role,
    picture: picture,
  );
}
