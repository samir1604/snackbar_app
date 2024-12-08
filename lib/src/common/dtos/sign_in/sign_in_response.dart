import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response.freezed.dart';

part 'sign_in_response.g.dart';


@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse({
    @JsonKey(name: 'id')
   required int id,
    @JsonKey(name: 'name')
  required String name,
    @JsonKey(name: 'username')
  required String username,

}) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}
