import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/enums/role_enum.dart';
import '../../../domain/entities/user_model.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const LoginResponse._();

  const factory LoginResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'username') required String username,
    @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson) required Role role,
    @JsonKey(name: 'foto') required String? picture,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'refreshToken') required String refreshToken,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  UserModel toUser() => UserModel(
    id: id,
    name: name,
    userName: username,
    role: role,
    picture: picture,
  );
}
