// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GachaStats {
  Uid get uid => throw _privateConstructorUsedError;
  List<GachaChar> get chars => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GachaStatsCopyWith<GachaStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaStatsCopyWith<$Res> {
  factory $GachaStatsCopyWith(
          GachaStats value, $Res Function(GachaStats) then) =
      _$GachaStatsCopyWithImpl<$Res>;
  $Res call({Uid uid, List<GachaChar> chars});
}

/// @nodoc
class _$GachaStatsCopyWithImpl<$Res> implements $GachaStatsCopyWith<$Res> {
  _$GachaStatsCopyWithImpl(this._value, this._then);

  final GachaStats _value;
  // ignore: unused_field
  final $Res Function(GachaStats) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? chars = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      chars: chars == freezed
          ? _value.chars
          : chars // ignore: cast_nullable_to_non_nullable
              as List<GachaChar>,
    ));
  }
}

/// @nodoc
abstract class _$$_GachaStatsCopyWith<$Res>
    implements $GachaStatsCopyWith<$Res> {
  factory _$$_GachaStatsCopyWith(
          _$_GachaStats value, $Res Function(_$_GachaStats) then) =
      __$$_GachaStatsCopyWithImpl<$Res>;
  @override
  $Res call({Uid uid, List<GachaChar> chars});
}

/// @nodoc
class __$$_GachaStatsCopyWithImpl<$Res> extends _$GachaStatsCopyWithImpl<$Res>
    implements _$$_GachaStatsCopyWith<$Res> {
  __$$_GachaStatsCopyWithImpl(
      _$_GachaStats _value, $Res Function(_$_GachaStats) _then)
      : super(_value, (v) => _then(v as _$_GachaStats));

  @override
  _$_GachaStats get _value => super._value as _$_GachaStats;

  @override
  $Res call({
    Object? uid = freezed,
    Object? chars = freezed,
  }) {
    return _then(_$_GachaStats(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      chars: chars == freezed
          ? _value._chars
          : chars // ignore: cast_nullable_to_non_nullable
              as List<GachaChar>,
    ));
  }
}

/// @nodoc

class _$_GachaStats extends _GachaStats {
  const _$_GachaStats({required this.uid, required final List<GachaChar> chars})
      : _chars = chars,
        super._();

  @override
  final Uid uid;
  final List<GachaChar> _chars;
  @override
  List<GachaChar> get chars {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chars);
  }

  @override
  String toString() {
    return 'GachaStats(uid: $uid, chars: $chars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaStats &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other._chars, _chars));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(_chars));

  @JsonKey(ignore: true)
  @override
  _$$_GachaStatsCopyWith<_$_GachaStats> get copyWith =>
      __$$_GachaStatsCopyWithImpl<_$_GachaStats>(this, _$identity);
}

abstract class _GachaStats extends GachaStats {
  const factory _GachaStats(
      {required final Uid uid,
      required final List<GachaChar> chars}) = _$_GachaStats;
  const _GachaStats._() : super._();

  @override
  Uid get uid;
  @override
  List<GachaChar> get chars;
  @override
  @JsonKey(ignore: true)
  _$$_GachaStatsCopyWith<_$_GachaStats> get copyWith =>
      throw _privateConstructorUsedError;
}
