// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HttpFailure _$HttpFailureFromJson(Map<String, dynamic> json) {
  return _HttpFailure.fromJson(json);
}

/// @nodoc
mixin _$HttpFailure {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: 'Exception')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: 500)
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail', defaultValue: 'Exception has thrown')
  String get detail => throw _privateConstructorUsedError;
  List<HttpError>? get errors => throw _privateConstructorUsedError;
  @JsonKey(name: 'traceId')
  String? get traceId => throw _privateConstructorUsedError;

  /// Serializes this HttpFailure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HttpFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpFailureCopyWith<HttpFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpFailureCopyWith<$Res> {
  factory $HttpFailureCopyWith(
          HttpFailure value, $Res Function(HttpFailure) then) =
      _$HttpFailureCopyWithImpl<$Res, HttpFailure>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'title', defaultValue: 'Exception') String title,
      @JsonKey(name: 'status', defaultValue: 500) int status,
      @JsonKey(name: 'detail', defaultValue: 'Exception has thrown')
      String detail,
      List<HttpError>? errors,
      @JsonKey(name: 'traceId') String? traceId});
}

/// @nodoc
class _$HttpFailureCopyWithImpl<$Res, $Val extends HttpFailure>
    implements $HttpFailureCopyWith<$Res> {
  _$HttpFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = null,
    Object? status = null,
    Object? detail = null,
    Object? errors = freezed,
    Object? traceId = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<HttpError>?,
      traceId: freezed == traceId
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpFailureImplCopyWith<$Res>
    implements $HttpFailureCopyWith<$Res> {
  factory _$$HttpFailureImplCopyWith(
          _$HttpFailureImpl value, $Res Function(_$HttpFailureImpl) then) =
      __$$HttpFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'title', defaultValue: 'Exception') String title,
      @JsonKey(name: 'status', defaultValue: 500) int status,
      @JsonKey(name: 'detail', defaultValue: 'Exception has thrown')
      String detail,
      List<HttpError>? errors,
      @JsonKey(name: 'traceId') String? traceId});
}

/// @nodoc
class __$$HttpFailureImplCopyWithImpl<$Res>
    extends _$HttpFailureCopyWithImpl<$Res, _$HttpFailureImpl>
    implements _$$HttpFailureImplCopyWith<$Res> {
  __$$HttpFailureImplCopyWithImpl(
      _$HttpFailureImpl _value, $Res Function(_$HttpFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = null,
    Object? status = null,
    Object? detail = null,
    Object? errors = freezed,
    Object? traceId = freezed,
  }) {
    return _then(_$HttpFailureImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<HttpError>?,
      traceId: freezed == traceId
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HttpFailureImpl extends _HttpFailure {
  const _$HttpFailureImpl(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'title', defaultValue: 'Exception') required this.title,
      @JsonKey(name: 'status', defaultValue: 500) required this.status,
      @JsonKey(name: 'detail', defaultValue: 'Exception has thrown')
      required this.detail,
      final List<HttpError>? errors,
      @JsonKey(name: 'traceId') this.traceId})
      : _errors = errors,
        super._();

  factory _$HttpFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpFailureImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'title', defaultValue: 'Exception')
  final String title;
  @override
  @JsonKey(name: 'status', defaultValue: 500)
  final int status;
  @override
  @JsonKey(name: 'detail', defaultValue: 'Exception has thrown')
  final String detail;
  final List<HttpError>? _errors;
  @override
  List<HttpError>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'traceId')
  final String? traceId;

  @override
  String toString() {
    return 'HttpFailure(type: $type, title: $title, status: $status, detail: $detail, errors: $errors, traceId: $traceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpFailureImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.traceId, traceId) || other.traceId == traceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, status, detail,
      const DeepCollectionEquality().hash(_errors), traceId);

  /// Create a copy of HttpFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpFailureImplCopyWith<_$HttpFailureImpl> get copyWith =>
      __$$HttpFailureImplCopyWithImpl<_$HttpFailureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpFailureImplToJson(
      this,
    );
  }
}

abstract class _HttpFailure extends HttpFailure {
  const factory _HttpFailure(
      {@JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'title', defaultValue: 'Exception')
      required final String title,
      @JsonKey(name: 'status', defaultValue: 500) required final int status,
      @JsonKey(name: 'detail', defaultValue: 'Exception has thrown')
      required final String detail,
      final List<HttpError>? errors,
      @JsonKey(name: 'traceId') final String? traceId}) = _$HttpFailureImpl;
  const _HttpFailure._() : super._();

  factory _HttpFailure.fromJson(Map<String, dynamic> json) =
      _$HttpFailureImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'title', defaultValue: 'Exception')
  String get title;
  @override
  @JsonKey(name: 'status', defaultValue: 500)
  int get status;
  @override
  @JsonKey(name: 'detail', defaultValue: 'Exception has thrown')
  String get detail;
  @override
  List<HttpError>? get errors;
  @override
  @JsonKey(name: 'traceId')
  String? get traceId;

  /// Create a copy of HttpFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpFailureImplCopyWith<_$HttpFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
