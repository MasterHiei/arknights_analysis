// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_char.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GachaChar {
  String get name => throw _privateConstructorUsedError;
  Rarity get rarity => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  String get pool => throw _privateConstructorUsedError;
  Ts get ts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GachaCharCopyWith<GachaChar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaCharCopyWith<$Res> {
  factory $GachaCharCopyWith(GachaChar value, $Res Function(GachaChar) then) =
      _$GachaCharCopyWithImpl<$Res>;
  $Res call({String name, Rarity rarity, bool isNew, String pool, Ts ts});
}

/// @nodoc
class _$GachaCharCopyWithImpl<$Res> implements $GachaCharCopyWith<$Res> {
  _$GachaCharCopyWithImpl(this._value, this._then);

  final GachaChar _value;
  // ignore: unused_field
  final $Res Function(GachaChar) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rarity = freezed,
    Object? isNew = freezed,
    Object? pool = freezed,
    Object? ts = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: rarity == freezed
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as Ts,
    ));
  }
}

/// @nodoc
abstract class _$$_GachaCharCopyWith<$Res> implements $GachaCharCopyWith<$Res> {
  factory _$$_GachaCharCopyWith(
          _$_GachaChar value, $Res Function(_$_GachaChar) then) =
      __$$_GachaCharCopyWithImpl<$Res>;
  @override
  $Res call({String name, Rarity rarity, bool isNew, String pool, Ts ts});
}

/// @nodoc
class __$$_GachaCharCopyWithImpl<$Res> extends _$GachaCharCopyWithImpl<$Res>
    implements _$$_GachaCharCopyWith<$Res> {
  __$$_GachaCharCopyWithImpl(
      _$_GachaChar _value, $Res Function(_$_GachaChar) _then)
      : super(_value, (v) => _then(v as _$_GachaChar));

  @override
  _$_GachaChar get _value => super._value as _$_GachaChar;

  @override
  $Res call({
    Object? name = freezed,
    Object? rarity = freezed,
    Object? isNew = freezed,
    Object? pool = freezed,
    Object? ts = freezed,
  }) {
    return _then(_$_GachaChar(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: rarity == freezed
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as Ts,
    ));
  }
}

/// @nodoc

class _$_GachaChar extends _GachaChar {
  const _$_GachaChar(
      {required this.name,
      required this.rarity,
      required this.isNew,
      required this.pool,
      required this.ts})
      : super._();

  @override
  final String name;
  @override
  final Rarity rarity;
  @override
  final bool isNew;
  @override
  final String pool;
  @override
  final Ts ts;

  @override
  String toString() {
    return 'GachaChar(name: $name, rarity: $rarity, isNew: $isNew, pool: $pool, ts: $ts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaChar &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.rarity, rarity) &&
            const DeepCollectionEquality().equals(other.isNew, isNew) &&
            const DeepCollectionEquality().equals(other.pool, pool) &&
            const DeepCollectionEquality().equals(other.ts, ts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(rarity),
      const DeepCollectionEquality().hash(isNew),
      const DeepCollectionEquality().hash(pool),
      const DeepCollectionEquality().hash(ts));

  @JsonKey(ignore: true)
  @override
  _$$_GachaCharCopyWith<_$_GachaChar> get copyWith =>
      __$$_GachaCharCopyWithImpl<_$_GachaChar>(this, _$identity);
}

abstract class _GachaChar extends GachaChar {
  const factory _GachaChar(
      {required final String name,
      required final Rarity rarity,
      required final bool isNew,
      required final String pool,
      required final Ts ts}) = _$_GachaChar;
  const _GachaChar._() : super._();

  @override
  String get name;
  @override
  Rarity get rarity;
  @override
  bool get isNew;
  @override
  String get pool;
  @override
  Ts get ts;
  @override
  @JsonKey(ignore: true)
  _$$_GachaCharCopyWith<_$_GachaChar> get copyWith =>
      throw _privateConstructorUsedError;
}
