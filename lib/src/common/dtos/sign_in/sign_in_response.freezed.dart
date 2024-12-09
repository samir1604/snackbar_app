// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) {
  return _SignInResponse.fromJson(json);
}

/// @nodoc
mixin _$SignInResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson)
  Role get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'foto')
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'accessToken')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this SignInResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInResponseCopyWith<SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseCopyWith<$Res> {
  factory $SignInResponseCopyWith(
          SignInResponse value, $Res Function(SignInResponse) then) =
      _$SignInResponseCopyWithImpl<$Res, SignInResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'username') String username,
      @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson) Role role,
      @JsonKey(name: 'foto') String? picture,
      @JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'refreshToken') String refreshToken});
}

/// @nodoc
class _$SignInResponseCopyWithImpl<$Res, $Val extends SignInResponse>
    implements $SignInResponseCopyWith<$Res> {
  _$SignInResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? role = null,
    Object? picture = freezed,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInResponseImplCopyWith<$Res>
    implements $SignInResponseCopyWith<$Res> {
  factory _$$SignInResponseImplCopyWith(_$SignInResponseImpl value,
          $Res Function(_$SignInResponseImpl) then) =
      __$$SignInResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'username') String username,
      @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson) Role role,
      @JsonKey(name: 'foto') String? picture,
      @JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'refreshToken') String refreshToken});
}

/// @nodoc
class __$$SignInResponseImplCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res, _$SignInResponseImpl>
    implements _$$SignInResponseImplCopyWith<$Res> {
  __$$SignInResponseImplCopyWithImpl(
      _$SignInResponseImpl _value, $Res Function(_$SignInResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? role = null,
    Object? picture = freezed,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$SignInResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResponseImpl implements _SignInResponse {
  const _$SignInResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson) required this.role,
      @JsonKey(name: 'foto') required this.picture,
      @JsonKey(name: 'accessToken') required this.accessToken,
      @JsonKey(name: 'refreshToken') required this.refreshToken});

  factory _$SignInResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson)
  final Role role;
  @override
  @JsonKey(name: 'foto')
  final String? picture;
  @override
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  final String refreshToken;

  @override
  String toString() {
    return 'SignInResponse(id: $id, name: $name, username: $username, role: $role, picture: $picture, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, role,
      picture, accessToken, refreshToken);

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResponseImplCopyWith<_$SignInResponseImpl> get copyWith =>
      __$$SignInResponseImplCopyWithImpl<_$SignInResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResponseImplToJson(
      this,
    );
  }
}

abstract class _SignInResponse implements SignInResponse {
  const factory _SignInResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson)
          required final Role role,
          @JsonKey(name: 'foto') required final String? picture,
          @JsonKey(name: 'accessToken') required final String accessToken,
          @JsonKey(name: 'refreshToken') required final String refreshToken}) =
      _$SignInResponseImpl;

  factory _SignInResponse.fromJson(Map<String, dynamic> json) =
      _$SignInResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(fromJson: Role.fromJson, toJson: Role.toJson)
  Role get role;
  @override
  @JsonKey(name: 'foto')
  String? get picture;
  @override
  @JsonKey(name: 'accessToken')
  String get accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  String get refreshToken;

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInResponseImplCopyWith<_$SignInResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
