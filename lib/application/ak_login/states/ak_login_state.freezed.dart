// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ak_login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AkLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AppFailure failure) failed,
    required TResult Function() shouldGo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AppFailure failure)? failed,
    TResult Function()? shouldGo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AppFailure failure)? failed,
    TResult Function()? shouldGo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AkLoginStateCopyWith<$Res> {
  factory $AkLoginStateCopyWith(
          AkLoginState value, $Res Function(AkLoginState) then) =
      _$AkLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AkLoginStateCopyWithImpl<$Res> implements $AkLoginStateCopyWith<$Res> {
  _$AkLoginStateCopyWithImpl(this._value, this._then);

  final AkLoginState _value;
  // ignore: unused_field
  final $Res Function(AkLoginState) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$AkLoginStateCopyWithImpl<$Res>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, (v) => _then(v as _$_Init));

  @override
  _$_Init get _value => super._value as _$_Init;
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'AkLoginState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AppFailure failure) failed,
    required TResult Function() shouldGo,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AppFailure failure)? failed,
    TResult Function()? shouldGo,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AppFailure failure)? failed,
    TResult Function()? shouldGo,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }
}

abstract class _Init implements AkLoginState {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res> extends _$AkLoginStateCopyWithImpl<$Res>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, (v) => _then(v as _$_Failed));

  @override
  _$_Failed get _value => super._value as _$_Failed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_Failed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }

  @override
  $AppFailureCopyWith<$Res> get failure {
    return $AppFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.failure);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'AkLoginState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AppFailure failure) failed,
    required TResult Function() shouldGo,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AppFailure failure)? failed,
    TResult Function()? shouldGo,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AppFailure failure)? failed,
    TResult Function()? shouldGo,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }
}

abstract class _Failed implements AkLoginState {
  const factory _Failed(final AppFailure failure) = _$_Failed;

  AppFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShouldGoCopyWith<$Res> {
  factory _$$_ShouldGoCopyWith(
          _$_ShouldGo value, $Res Function(_$_ShouldGo) then) =
      __$$_ShouldGoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShouldGoCopyWithImpl<$Res> extends _$AkLoginStateCopyWithImpl<$Res>
    implements _$$_ShouldGoCopyWith<$Res> {
  __$$_ShouldGoCopyWithImpl(
      _$_ShouldGo _value, $Res Function(_$_ShouldGo) _then)
      : super(_value, (v) => _then(v as _$_ShouldGo));

  @override
  _$_ShouldGo get _value => super._value as _$_ShouldGo;
}

/// @nodoc

class _$_ShouldGo implements _ShouldGo {
  const _$_ShouldGo();

  @override
  String toString() {
    return 'AkLoginState.shouldGo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShouldGo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AppFailure failure) failed,
    required TResult Function() shouldGo,
  }) {
    return shouldGo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AppFailure failure)? failed,
    TResult Function()? shouldGo,
  }) {
    return shouldGo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AppFailure failure)? failed,
    TResult Function()? shouldGo,
    required TResult orElse(),
  }) {
    if (shouldGo != null) {
      return shouldGo();
    }
    return orElse();
  }
}

abstract class _ShouldGo implements AkLoginState {
  const factory _ShouldGo() = _$_ShouldGo;
}
