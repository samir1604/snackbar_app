// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_client_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HttpClientException {
  String get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;

  /// Create a copy of HttpClientException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpClientExceptionCopyWith<HttpClientException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpClientExceptionCopyWith<$Res> {
  factory $HttpClientExceptionCopyWith(
          HttpClientException value, $Res Function(HttpClientException) then) =
      _$HttpClientExceptionCopyWithImpl<$Res, HttpClientException>;
  @useResult
  $Res call(
      {String message,
      int? statusCode,
      Exception? exception,
      StackTrace stackTrace});
}

/// @nodoc
class _$HttpClientExceptionCopyWithImpl<$Res, $Val extends HttpClientException>
    implements $HttpClientExceptionCopyWith<$Res> {
  _$HttpClientExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpClientException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
    Object? exception = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpClientExceptionImplCopyWith<$Res>
    implements $HttpClientExceptionCopyWith<$Res> {
  factory _$$HttpClientExceptionImplCopyWith(_$HttpClientExceptionImpl value,
          $Res Function(_$HttpClientExceptionImpl) then) =
      __$$HttpClientExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      int? statusCode,
      Exception? exception,
      StackTrace stackTrace});
}

/// @nodoc
class __$$HttpClientExceptionImplCopyWithImpl<$Res>
    extends _$HttpClientExceptionCopyWithImpl<$Res, _$HttpClientExceptionImpl>
    implements _$$HttpClientExceptionImplCopyWith<$Res> {
  __$$HttpClientExceptionImplCopyWithImpl(_$HttpClientExceptionImpl _value,
      $Res Function(_$HttpClientExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpClientException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
    Object? exception = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$HttpClientExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$HttpClientExceptionImpl implements _HttpClientException {
  const _$HttpClientExceptionImpl(
      {required this.message,
      this.statusCode,
      this.exception,
      this.stackTrace = StackTrace.empty});

  @override
  final String message;
  @override
  final int? statusCode;
  @override
  final Exception? exception;
  @override
  @JsonKey()
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'HttpClientException(message: $message, statusCode: $statusCode, exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpClientExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, statusCode, exception, stackTrace);

  /// Create a copy of HttpClientException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpClientExceptionImplCopyWith<_$HttpClientExceptionImpl> get copyWith =>
      __$$HttpClientExceptionImplCopyWithImpl<_$HttpClientExceptionImpl>(
          this, _$identity);
}

abstract class _HttpClientException implements HttpClientException {
  const factory _HttpClientException(
      {required final String message,
      final int? statusCode,
      final Exception? exception,
      final StackTrace stackTrace}) = _$HttpClientExceptionImpl;

  @override
  String get message;
  @override
  int? get statusCode;
  @override
  Exception? get exception;
  @override
  StackTrace get stackTrace;

  /// Create a copy of HttpClientException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpClientExceptionImplCopyWith<_$HttpClientExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
