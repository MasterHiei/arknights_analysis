// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidToken,
    required TResult Function(T failedValue) invalidTs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidToken,
    TResult Function(T failedValue)? invalidTs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidToken,
    TResult Function(T failedValue)? invalidTs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidToken<T> value) invalidToken,
    required TResult Function(_InvalidTs<T> value) invalidTs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidToken<T> value)? invalidToken,
    TResult Function(_InvalidTs<T> value)? invalidTs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidToken<T> value)? invalidToken,
    TResult Function(_InvalidTs<T> value)? invalidTs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$$_InvalidTokenCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_InvalidTokenCopyWith(
          _$_InvalidToken<T> value, $Res Function(_$_InvalidToken<T>) then) =
      __$$_InvalidTokenCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$_InvalidTokenCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_InvalidTokenCopyWith<T, $Res> {
  __$$_InvalidTokenCopyWithImpl(
      _$_InvalidToken<T> _value, $Res Function(_$_InvalidToken<T>) _then)
      : super(_value, (v) => _then(v as _$_InvalidToken<T>));

  @override
  _$_InvalidToken<T> get _value => super._value as _$_InvalidToken<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_InvalidToken<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidToken<T> implements _InvalidToken<T> {
  const _$_InvalidToken({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidToken(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidToken<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidTokenCopyWith<T, _$_InvalidToken<T>> get copyWith =>
      __$$_InvalidTokenCopyWithImpl<T, _$_InvalidToken<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidToken,
    required TResult Function(T failedValue) invalidTs,
  }) {
    return invalidToken(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidToken,
    TResult Function(T failedValue)? invalidTs,
  }) {
    return invalidToken?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidToken,
    TResult Function(T failedValue)? invalidTs,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidToken<T> value) invalidToken,
    required TResult Function(_InvalidTs<T> value) invalidTs,
  }) {
    return invalidToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidToken<T> value)? invalidToken,
    TResult Function(_InvalidTs<T> value)? invalidTs,
  }) {
    return invalidToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidToken<T> value)? invalidToken,
    TResult Function(_InvalidTs<T> value)? invalidTs,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken(this);
    }
    return orElse();
  }
}

abstract class _InvalidToken<T> implements ValueFailure<T> {
  const factory _InvalidToken({required final T failedValue}) =
      _$_InvalidToken<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidTokenCopyWith<T, _$_InvalidToken<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidTsCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_InvalidTsCopyWith(
          _$_InvalidTs<T> value, $Res Function(_$_InvalidTs<T>) then) =
      __$$_InvalidTsCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$_InvalidTsCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_InvalidTsCopyWith<T, $Res> {
  __$$_InvalidTsCopyWithImpl(
      _$_InvalidTs<T> _value, $Res Function(_$_InvalidTs<T>) _then)
      : super(_value, (v) => _then(v as _$_InvalidTs<T>));

  @override
  _$_InvalidTs<T> get _value => super._value as _$_InvalidTs<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_InvalidTs<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidTs<T> implements _InvalidTs<T> {
  const _$_InvalidTs({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidTs(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidTs<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidTsCopyWith<T, _$_InvalidTs<T>> get copyWith =>
      __$$_InvalidTsCopyWithImpl<T, _$_InvalidTs<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidToken,
    required TResult Function(T failedValue) invalidTs,
  }) {
    return invalidTs(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidToken,
    TResult Function(T failedValue)? invalidTs,
  }) {
    return invalidTs?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidToken,
    TResult Function(T failedValue)? invalidTs,
    required TResult orElse(),
  }) {
    if (invalidTs != null) {
      return invalidTs(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidToken<T> value) invalidToken,
    required TResult Function(_InvalidTs<T> value) invalidTs,
  }) {
    return invalidTs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidToken<T> value)? invalidToken,
    TResult Function(_InvalidTs<T> value)? invalidTs,
  }) {
    return invalidTs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidToken<T> value)? invalidToken,
    TResult Function(_InvalidTs<T> value)? invalidTs,
    required TResult orElse(),
  }) {
    if (invalidTs != null) {
      return invalidTs(this);
    }
    return orElse();
  }
}

abstract class _InvalidTs<T> implements ValueFailure<T> {
  const factory _InvalidTs({required final T failedValue}) = _$_InvalidTs<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidTsCopyWith<T, _$_InvalidTs<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
