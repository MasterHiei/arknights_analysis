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
    required TResult Function(Token token) shouldGo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Token token)? shouldGo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Token token)? shouldGo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShouldGo value) shouldGo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShouldGo value)? shouldGo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShouldGo value)? shouldGo,
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
    required TResult Function(Token token) shouldGo,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Token token)? shouldGo,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Token token)? shouldGo,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShouldGo value) shouldGo,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShouldGo value)? shouldGo,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShouldGo value)? shouldGo,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AkLoginState {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_ShouldGoCopyWith<$Res> {
  factory _$$_ShouldGoCopyWith(
          _$_ShouldGo value, $Res Function(_$_ShouldGo) then) =
      __$$_ShouldGoCopyWithImpl<$Res>;
  $Res call({Token token});
}

/// @nodoc
class __$$_ShouldGoCopyWithImpl<$Res> extends _$AkLoginStateCopyWithImpl<$Res>
    implements _$$_ShouldGoCopyWith<$Res> {
  __$$_ShouldGoCopyWithImpl(
      _$_ShouldGo _value, $Res Function(_$_ShouldGo) _then)
      : super(_value, (v) => _then(v as _$_ShouldGo));

  @override
  _$_ShouldGo get _value => super._value as _$_ShouldGo;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_ShouldGo(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }
}

/// @nodoc

class _$_ShouldGo implements _ShouldGo {
  const _$_ShouldGo(this.token);

  @override
  final Token token;

  @override
  String toString() {
    return 'AkLoginState.shouldGo(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShouldGo &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_ShouldGoCopyWith<_$_ShouldGo> get copyWith =>
      __$$_ShouldGoCopyWithImpl<_$_ShouldGo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Token token) shouldGo,
  }) {
    return shouldGo(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Token token)? shouldGo,
  }) {
    return shouldGo?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Token token)? shouldGo,
    required TResult orElse(),
  }) {
    if (shouldGo != null) {
      return shouldGo(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShouldGo value) shouldGo,
  }) {
    return shouldGo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShouldGo value)? shouldGo,
  }) {
    return shouldGo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShouldGo value)? shouldGo,
    required TResult orElse(),
  }) {
    if (shouldGo != null) {
      return shouldGo(this);
    }
    return orElse();
  }
}

abstract class _ShouldGo implements AkLoginState {
  const factory _ShouldGo(final Token token) = _$_ShouldGo;

  Token get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShouldGoCopyWith<_$_ShouldGo> get copyWith =>
      throw _privateConstructorUsedError;
}
