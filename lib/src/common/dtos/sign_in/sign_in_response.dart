import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/role_enum.dart';

part 'sign_in_response.freezed.dart';

part 'sign_in_response.g.dart';

@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'username') required String username,
    @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson) required Role role,
    @JsonKey(name: 'foto') required String? picture,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'refreshToken') required String refreshToken,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}
