// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watch_gacha_stats_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatchGachaStatsParams {
  Uid get uid => throw _privateConstructorUsedError;
  String? get pool => throw _privateConstructorUsedError;
  GachaRuleType? get ruleType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchGachaStatsParamsCopyWith<WatchGachaStatsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchGachaStatsParamsCopyWith<$Res> {
  factory $WatchGachaStatsParamsCopyWith(WatchGachaStatsParams value,
          $Res Function(WatchGachaStatsParams) then) =
      _$WatchGachaStatsParamsCopyWithImpl<$Res>;
  $Res call({Uid uid, String? pool, GachaRuleType? ruleType});
}

/// @nodoc
class _$WatchGachaStatsParamsCopyWithImpl<$Res>
    implements $WatchGachaStatsParamsCopyWith<$Res> {
  _$WatchGachaStatsParamsCopyWithImpl(this._value, this._then);

  final WatchGachaStatsParams _value;
  // ignore: unused_field
  final $Res Function(WatchGachaStatsParams) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? pool = freezed,
    Object? ruleType = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String?,
      ruleType: ruleType == freezed
          ? _value.ruleType
          : ruleType // ignore: cast_nullable_to_non_nullable
              as GachaRuleType?,
    ));
  }
}

/// @nodoc
abstract class _$$_WatchGachaStatsParamsCopyWith<$Res>
    implements $WatchGachaStatsParamsCopyWith<$Res> {
  factory _$$_WatchGachaStatsParamsCopyWith(_$_WatchGachaStatsParams value,
          $Res Function(_$_WatchGachaStatsParams) then) =
      __$$_WatchGachaStatsParamsCopyWithImpl<$Res>;
  @override
  $Res call({Uid uid, String? pool, GachaRuleType? ruleType});
}

/// @nodoc
class __$$_WatchGachaStatsParamsCopyWithImpl<$Res>
    extends _$WatchGachaStatsParamsCopyWithImpl<$Res>
    implements _$$_WatchGachaStatsParamsCopyWith<$Res> {
  __$$_WatchGachaStatsParamsCopyWithImpl(_$_WatchGachaStatsParams _value,
      $Res Function(_$_WatchGachaStatsParams) _then)
      : super(_value, (v) => _then(v as _$_WatchGachaStatsParams));

  @override
  _$_WatchGachaStatsParams get _value =>
      super._value as _$_WatchGachaStatsParams;

  @override
  $Res call({
    Object? uid = freezed,
    Object? pool = freezed,
    Object? ruleType = freezed,
  }) {
    return _then(_$_WatchGachaStatsParams(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String?,
      ruleType: ruleType == freezed
          ? _value.ruleType
          : ruleType // ignore: cast_nullable_to_non_nullable
              as GachaRuleType?,
    ));
  }
}

/// @nodoc

class _$_WatchGachaStatsParams implements _WatchGachaStatsParams {
  const _$_WatchGachaStatsParams({required this.uid, this.pool, this.ruleType});

  @override
  final Uid uid;
  @override
  final String? pool;
  @override
  final GachaRuleType? ruleType;

  @override
  String toString() {
    return 'WatchGachaStatsParams(uid: $uid, pool: $pool, ruleType: $ruleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchGachaStatsParams &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.pool, pool) &&
            const DeepCollectionEquality().equals(other.ruleType, ruleType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(pool),
      const DeepCollectionEquality().hash(ruleType));

  @JsonKey(ignore: true)
  @override
  _$$_WatchGachaStatsParamsCopyWith<_$_WatchGachaStatsParams> get copyWith =>
      __$$_WatchGachaStatsParamsCopyWithImpl<_$_WatchGachaStatsParams>(
          this, _$identity);
}

abstract class _WatchGachaStatsParams implements WatchGachaStatsParams {
  const factory _WatchGachaStatsParams(
      {required final Uid uid,
      final String? pool,
      final GachaRuleType? ruleType}) = _$_WatchGachaStatsParams;

  @override
  Uid get uid => throw _privateConstructorUsedError;
  @override
  String? get pool => throw _privateConstructorUsedError;
  @override
  GachaRuleType? get ruleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WatchGachaStatsParamsCopyWith<_$_WatchGachaStatsParams> get copyWith =>
      throw _privateConstructorUsedError;
}
