// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GachaRecord {
  Ts get ts => throw _privateConstructorUsedError;
  String get pool => throw _privateConstructorUsedError;
  List<GachaChar> get chars => throw _privateConstructorUsedError;
  Uid get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GachaRecordCopyWith<GachaRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaRecordCopyWith<$Res> {
  factory $GachaRecordCopyWith(
          GachaRecord value, $Res Function(GachaRecord) then) =
      _$GachaRecordCopyWithImpl<$Res>;
  $Res call({Ts ts, String pool, List<GachaChar> chars, Uid uid});
}

/// @nodoc
class _$GachaRecordCopyWithImpl<$Res> implements $GachaRecordCopyWith<$Res> {
  _$GachaRecordCopyWithImpl(this._value, this._then);

  final GachaRecord _value;
  // ignore: unused_field
  final $Res Function(GachaRecord) _then;

  @override
  $Res call({
    Object? ts = freezed,
    Object? pool = freezed,
    Object? chars = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as Ts,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      chars: chars == freezed
          ? _value.chars
          : chars // ignore: cast_nullable_to_non_nullable
              as List<GachaChar>,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
    ));
  }
}

/// @nodoc
abstract class _$$_GachaRecordCopyWith<$Res>
    implements $GachaRecordCopyWith<$Res> {
  factory _$$_GachaRecordCopyWith(
          _$_GachaRecord value, $Res Function(_$_GachaRecord) then) =
      __$$_GachaRecordCopyWithImpl<$Res>;
  @override
  $Res call({Ts ts, String pool, List<GachaChar> chars, Uid uid});
}

/// @nodoc
class __$$_GachaRecordCopyWithImpl<$Res> extends _$GachaRecordCopyWithImpl<$Res>
    implements _$$_GachaRecordCopyWith<$Res> {
  __$$_GachaRecordCopyWithImpl(
      _$_GachaRecord _value, $Res Function(_$_GachaRecord) _then)
      : super(_value, (v) => _then(v as _$_GachaRecord));

  @override
  _$_GachaRecord get _value => super._value as _$_GachaRecord;

  @override
  $Res call({
    Object? ts = freezed,
    Object? pool = freezed,
    Object? chars = freezed,
    Object? uid = freezed,
  }) {
    return _then(_$_GachaRecord(
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as Ts,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      chars: chars == freezed
          ? _value._chars
          : chars // ignore: cast_nullable_to_non_nullable
              as List<GachaChar>,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
    ));
  }
}

/// @nodoc

class _$_GachaRecord implements _GachaRecord {
  const _$_GachaRecord(
      {required this.ts,
      required this.pool,
      required final List<GachaChar> chars,
      required this.uid})
      : _chars = chars;

  @override
  final Ts ts;
  @override
  final String pool;
  final List<GachaChar> _chars;
  @override
  List<GachaChar> get chars {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chars);
  }

  @override
  final Uid uid;

  @override
  String toString() {
    return 'GachaRecord(ts: $ts, pool: $pool, chars: $chars, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaRecord &&
            const DeepCollectionEquality().equals(other.ts, ts) &&
            const DeepCollectionEquality().equals(other.pool, pool) &&
            const DeepCollectionEquality().equals(other._chars, _chars) &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ts),
      const DeepCollectionEquality().hash(pool),
      const DeepCollectionEquality().hash(_chars),
      const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_GachaRecordCopyWith<_$_GachaRecord> get copyWith =>
      __$$_GachaRecordCopyWithImpl<_$_GachaRecord>(this, _$identity);
}

abstract class _GachaRecord implements GachaRecord {
  const factory _GachaRecord(
      {required final Ts ts,
      required final String pool,
      required final List<GachaChar> chars,
      required final Uid uid}) = _$_GachaRecord;

  @override
  Ts get ts;
  @override
  String get pool;
  @override
  List<GachaChar> get chars;
  @override
  Uid get uid;
  @override
  @JsonKey(ignore: true)
  _$$_GachaRecordCopyWith<_$_GachaRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
