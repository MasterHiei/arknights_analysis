// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localizedError,
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() localDataEmpty,
    required TResult Function() invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizedError value) localizedError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_LocalDataEmpty value) localDataEmpty,
    required TResult Function(_InvalidToken value) invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailureCopyWith<$Res> {
  factory $AppFailureCopyWith(
          AppFailure value, $Res Function(AppFailure) then) =
      _$AppFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res> implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  final AppFailure _value;
  // ignore: unused_field
  final $Res Function(AppFailure) _then;
}

/// @nodoc
abstract class _$$_LocalizedErrorCopyWith<$Res> {
  factory _$$_LocalizedErrorCopyWith(
          _$_LocalizedError value, $Res Function(_$_LocalizedError) then) =
      __$$_LocalizedErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_LocalizedErrorCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements _$$_LocalizedErrorCopyWith<$Res> {
  __$$_LocalizedErrorCopyWithImpl(
      _$_LocalizedError _value, $Res Function(_$_LocalizedError) _then)
      : super(_value, (v) => _then(v as _$_LocalizedError));

  @override
  _$_LocalizedError get _value => super._value as _$_LocalizedError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_LocalizedError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocalizedError extends _LocalizedError {
  const _$_LocalizedError(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AppFailure.localizedError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalizedError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_LocalizedErrorCopyWith<_$_LocalizedError> get copyWith =>
      __$$_LocalizedErrorCopyWithImpl<_$_LocalizedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localizedError,
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() localDataEmpty,
    required TResult Function() invalidToken,
  }) {
    return localizedError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
  }) {
    return localizedError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
    required TResult orElse(),
  }) {
    if (localizedError != null) {
      return localizedError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizedError value) localizedError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_LocalDataEmpty value) localDataEmpty,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return localizedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return localizedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (localizedError != null) {
      return localizedError(this);
    }
    return orElse();
  }
}

abstract class _LocalizedError extends AppFailure {
  const factory _LocalizedError(final String message) = _$_LocalizedError;
  const _LocalizedError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_LocalizedErrorCopyWith<_$_LocalizedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnexpectedErrorCopyWith<$Res> {
  factory _$$_UnexpectedErrorCopyWith(
          _$_UnexpectedError value, $Res Function(_$_UnexpectedError) then) =
      __$$_UnexpectedErrorCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class __$$_UnexpectedErrorCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements _$$_UnexpectedErrorCopyWith<$Res> {
  __$$_UnexpectedErrorCopyWithImpl(
      _$_UnexpectedError _value, $Res Function(_$_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _$_UnexpectedError));

  @override
  _$_UnexpectedError get _value => super._value as _$_UnexpectedError;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_UnexpectedError(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_UnexpectedError extends _UnexpectedError {
  const _$_UnexpectedError(this.e) : super._();

  @override
  final Object e;

  @override
  String toString() {
    return 'AppFailure.unexpectedError(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnexpectedError &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_UnexpectedErrorCopyWith<_$_UnexpectedError> get copyWith =>
      __$$_UnexpectedErrorCopyWithImpl<_$_UnexpectedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localizedError,
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() localDataEmpty,
    required TResult Function() invalidToken,
  }) {
    return unexpectedError(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
  }) {
    return unexpectedError?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizedError value) localizedError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_LocalDataEmpty value) localDataEmpty,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError extends AppFailure {
  const factory _UnexpectedError(final Object e) = _$_UnexpectedError;
  const _UnexpectedError._() : super._();

  Object get e;
  @JsonKey(ignore: true)
  _$$_UnexpectedErrorCopyWith<_$_UnexpectedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkUnreachableCopyWith<$Res> {
  factory _$$_NetworkUnreachableCopyWith(_$_NetworkUnreachable value,
          $Res Function(_$_NetworkUnreachable) then) =
      __$$_NetworkUnreachableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkUnreachableCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements _$$_NetworkUnreachableCopyWith<$Res> {
  __$$_NetworkUnreachableCopyWithImpl(
      _$_NetworkUnreachable _value, $Res Function(_$_NetworkUnreachable) _then)
      : super(_value, (v) => _then(v as _$_NetworkUnreachable));

  @override
  _$_NetworkUnreachable get _value => super._value as _$_NetworkUnreachable;
}

/// @nodoc

class _$_NetworkUnreachable extends _NetworkUnreachable {
  const _$_NetworkUnreachable() : super._();

  @override
  String toString() {
    return 'AppFailure.networkUnreachable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NetworkUnreachable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localizedError,
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() localDataEmpty,
    required TResult Function() invalidToken,
  }) {
    return networkUnreachable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
  }) {
    return networkUnreachable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
    required TResult orElse(),
  }) {
    if (networkUnreachable != null) {
      return networkUnreachable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizedError value) localizedError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_LocalDataEmpty value) localDataEmpty,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return networkUnreachable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return networkUnreachable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (networkUnreachable != null) {
      return networkUnreachable(this);
    }
    return orElse();
  }
}

abstract class _NetworkUnreachable extends AppFailure {
  const factory _NetworkUnreachable() = _$_NetworkUnreachable;
  const _NetworkUnreachable._() : super._();
}

/// @nodoc
abstract class _$$_RemoteServerErrorCopyWith<$Res> {
  factory _$$_RemoteServerErrorCopyWith(_$_RemoteServerError value,
          $Res Function(_$_RemoteServerError) then) =
      __$$_RemoteServerErrorCopyWithImpl<$Res>;
  $Res call({String? message, int? code});
}

/// @nodoc
class __$$_RemoteServerErrorCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements _$$_RemoteServerErrorCopyWith<$Res> {
  __$$_RemoteServerErrorCopyWithImpl(
      _$_RemoteServerError _value, $Res Function(_$_RemoteServerError) _then)
      : super(_value, (v) => _then(v as _$_RemoteServerError));

  @override
  _$_RemoteServerError get _value => super._value as _$_RemoteServerError;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_RemoteServerError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RemoteServerError extends _RemoteServerError {
  const _$_RemoteServerError({this.message, this.code}) : super._();

  @override
  final String? message;
  @override
  final int? code;

  @override
  String toString() {
    return 'AppFailure.remoteServerError(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteServerError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_RemoteServerErrorCopyWith<_$_RemoteServerError> get copyWith =>
      __$$_RemoteServerErrorCopyWithImpl<_$_RemoteServerError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localizedError,
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() localDataEmpty,
    required TResult Function() invalidToken,
  }) {
    return remoteServerError(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
  }) {
    return remoteServerError?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
    required TResult orElse(),
  }) {
    if (remoteServerError != null) {
      return remoteServerError(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizedError value) localizedError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_LocalDataEmpty value) localDataEmpty,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return remoteServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return remoteServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (remoteServerError != null) {
      return remoteServerError(this);
    }
    return orElse();
  }
}

abstract class _RemoteServerError extends AppFailure {
  const factory _RemoteServerError({final String? message, final int? code}) =
      _$_RemoteServerError;
  const _RemoteServerError._() : super._();

  String? get message;
  int? get code;
  @JsonKey(ignore: true)
  _$$_RemoteServerErrorCopyWith<_$_RemoteServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalDataErrorCopyWith<$Res> {
  factory _$$_LocalDataErrorCopyWith(
          _$_LocalDataError value, $Res Function(_$_LocalDataError) then) =
      __$$_LocalDataErrorCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class __$$_LocalDataErrorCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements _$$_LocalDataErrorCopyWith<$Res> {
  __$$_LocalDataErrorCopyWithImpl(
      _$_LocalDataError _value, $Res Function(_$_LocalDataError) _then)
      : super(_value, (v) => _then(v as _$_LocalDataError));

  @override
  _$_LocalDataError get _value => super._value as _$_LocalDataError;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_LocalDataError(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_LocalDataError extends _LocalDataError {
  const _$_LocalDataError(this.e) : super._();

  @override
  final Object e;

  @override
  String toString() {
    return 'AppFailure.localDataError(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDataError &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_LocalDataErrorCopyWith<_$_LocalDataError> get copyWith =>
      __$$_LocalDataErrorCopyWithImpl<_$_LocalDataError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localizedError,
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() localDataEmpty,
    required TResult Function() invalidToken,
  }) {
    return localDataError(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
  }) {
    return localDataError?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
    required TResult orElse(),
  }) {
    if (localDataError != null) {
      return localDataError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizedError value) localizedError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_LocalDataEmpty value) localDataEmpty,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return localDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return localDataError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (localDataError != null) {
      return localDataError(this);
    }
    return orElse();
  }
}

abstract class _LocalDataError extends AppFailure {
  const factory _LocalDataError(final Object e) = _$_LocalDataError;
  const _LocalDataError._() : super._();

  Object get e;
  @JsonKey(ignore: true)
  _$$_LocalDataErrorCopyWith<_$_LocalDataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalDataEmptyCopyWith<$Res> {
  factory _$$_LocalDataEmptyCopyWith(
          _$_LocalDataEmpty value, $Res Function(_$_LocalDataEmpty) then) =
      __$$_LocalDataEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocalDataEmptyCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements _$$_LocalDataEmptyCopyWith<$Res> {
  __$$_LocalDataEmptyCopyWithImpl(
      _$_LocalDataEmpty _value, $Res Function(_$_LocalDataEmpty) _then)
      : super(_value, (v) => _then(v as _$_LocalDataEmpty));

  @override
  _$_LocalDataEmpty get _value => super._value as _$_LocalDataEmpty;
}

/// @nodoc

class _$_LocalDataEmpty extends _LocalDataEmpty {
  const _$_LocalDataEmpty() : super._();

  @override
  String toString() {
    return 'AppFailure.localDataEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LocalDataEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localizedError,
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() localDataEmpty,
    required TResult Function() invalidToken,
  }) {
    return localDataEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
  }) {
    return localDataEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
    required TResult orElse(),
  }) {
    if (localDataEmpty != null) {
      return localDataEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizedError value) localizedError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_LocalDataEmpty value) localDataEmpty,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return localDataEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return localDataEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (localDataEmpty != null) {
      return localDataEmpty(this);
    }
    return orElse();
  }
}

abstract class _LocalDataEmpty extends AppFailure {
  const factory _LocalDataEmpty() = _$_LocalDataEmpty;
  const _LocalDataEmpty._() : super._();
}

/// @nodoc
abstract class _$$_InvalidTokenCopyWith<$Res> {
  factory _$$_InvalidTokenCopyWith(
          _$_InvalidToken value, $Res Function(_$_InvalidToken) then) =
      __$$_InvalidTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidTokenCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res>
    implements _$$_InvalidTokenCopyWith<$Res> {
  __$$_InvalidTokenCopyWithImpl(
      _$_InvalidToken _value, $Res Function(_$_InvalidToken) _then)
      : super(_value, (v) => _then(v as _$_InvalidToken));

  @override
  _$_InvalidToken get _value => super._value as _$_InvalidToken;
}

/// @nodoc

class _$_InvalidToken extends _InvalidToken {
  const _$_InvalidToken() : super._();

  @override
  String toString() {
    return 'AppFailure.invalidToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localizedError,
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() localDataEmpty,
    required TResult Function() invalidToken,
  }) {
    return invalidToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
  }) {
    return invalidToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localizedError,
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? localDataEmpty,
    TResult Function()? invalidToken,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizedError value) localizedError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_LocalDataEmpty value) localDataEmpty,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return invalidToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return invalidToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizedError value)? localizedError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_LocalDataEmpty value)? localDataEmpty,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken(this);
    }
    return orElse();
  }
}

abstract class _InvalidToken extends AppFailure {
  const factory _InvalidToken() = _$_InvalidToken;
  const _InvalidToken._() : super._();
}
