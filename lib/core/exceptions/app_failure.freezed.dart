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
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? invalidToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_InvalidToken value) invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_UnexpectedError implements _UnexpectedError {
  const _$_UnexpectedError(this.e);

  @override
  final Object e;

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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() invalidToken,
  }) {
    return unexpectedError(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? invalidToken,
  }) {
    return unexpectedError?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
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
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements AppFailure {
  const factory _UnexpectedError(final Object e) = _$_UnexpectedError;

  Object get e => throw _privateConstructorUsedError;
}

/// @nodoc

class _$_NetworkUnreachable implements _NetworkUnreachable {
  const _$_NetworkUnreachable();

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
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() invalidToken,
  }) {
    return networkUnreachable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? invalidToken,
  }) {
    return networkUnreachable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
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
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return networkUnreachable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return networkUnreachable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (networkUnreachable != null) {
      return networkUnreachable(this);
    }
    return orElse();
  }
}

abstract class _NetworkUnreachable implements AppFailure {
  const factory _NetworkUnreachable() = _$_NetworkUnreachable;
}

/// @nodoc

class _$_RemoteServerError implements _RemoteServerError {
  const _$_RemoteServerError({this.message, this.code});

  @override
  final String? message;
  @override
  final int? code;

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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() invalidToken,
  }) {
    return remoteServerError(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? invalidToken,
  }) {
    return remoteServerError?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
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
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return remoteServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return remoteServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (remoteServerError != null) {
      return remoteServerError(this);
    }
    return orElse();
  }
}

abstract class _RemoteServerError implements AppFailure {
  const factory _RemoteServerError({final String? message, final int? code}) =
      _$_RemoteServerError;

  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
}

/// @nodoc

class _$_LocalDataError implements _LocalDataError {
  const _$_LocalDataError(this.e);

  @override
  final Object e;

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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() invalidToken,
  }) {
    return localDataError(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? invalidToken,
  }) {
    return localDataError?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
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
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return localDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return localDataError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (localDataError != null) {
      return localDataError(this);
    }
    return orElse();
  }
}

abstract class _LocalDataError implements AppFailure {
  const factory _LocalDataError(final Object e) = _$_LocalDataError;

  Object get e => throw _privateConstructorUsedError;
}

/// @nodoc

class _$_InvalidToken implements _InvalidToken {
  const _$_InvalidToken();

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
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String? message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
    required TResult Function() invalidToken,
  }) {
    return invalidToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    TResult Function()? invalidToken,
  }) {
    return invalidToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String? message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
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
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
    required TResult Function(_InvalidToken value) invalidToken,
  }) {
    return invalidToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
  }) {
    return invalidToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    TResult Function(_InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken(this);
    }
    return orElse();
  }
}

abstract class _InvalidToken implements AppFailure {
  const factory _InvalidToken() = _$_InvalidToken;
}
