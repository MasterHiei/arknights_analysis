// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_gacha_stats_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetGachaStatsParams {
  Uid get uid => throw _privateConstructorUsedError;
  String? get pool => throw _privateConstructorUsedError;
  List<GachaRuleType>? get includeRuleTypes =>
      throw _privateConstructorUsedError;
  List<GachaRuleType>? get excludeRuleTypes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetGachaStatsParamsCopyWith<GetGachaStatsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGachaStatsParamsCopyWith<$Res> {
  factory $GetGachaStatsParamsCopyWith(
          GetGachaStatsParams value, $Res Function(GetGachaStatsParams) then) =
      _$GetGachaStatsParamsCopyWithImpl<$Res>;
  $Res call(
      {Uid uid,
      String? pool,
      List<GachaRuleType>? includeRuleTypes,
      List<GachaRuleType>? excludeRuleTypes});
}

/// @nodoc
class _$GetGachaStatsParamsCopyWithImpl<$Res>
    implements $GetGachaStatsParamsCopyWith<$Res> {
  _$GetGachaStatsParamsCopyWithImpl(this._value, this._then);

  final GetGachaStatsParams _value;
  // ignore: unused_field
  final $Res Function(GetGachaStatsParams) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? pool = freezed,
    Object? includeRuleTypes = freezed,
    Object? excludeRuleTypes = freezed,
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
      includeRuleTypes: includeRuleTypes == freezed
          ? _value.includeRuleTypes
          : includeRuleTypes // ignore: cast_nullable_to_non_nullable
              as List<GachaRuleType>?,
      excludeRuleTypes: excludeRuleTypes == freezed
          ? _value.excludeRuleTypes
          : excludeRuleTypes // ignore: cast_nullable_to_non_nullable
              as List<GachaRuleType>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetGachaStatsParamsCopyWith<$Res>
    implements $GetGachaStatsParamsCopyWith<$Res> {
  factory _$$_GetGachaStatsParamsCopyWith(_$_GetGachaStatsParams value,
          $Res Function(_$_GetGachaStatsParams) then) =
      __$$_GetGachaStatsParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uid uid,
      String? pool,
      List<GachaRuleType>? includeRuleTypes,
      List<GachaRuleType>? excludeRuleTypes});
}

/// @nodoc
class __$$_GetGachaStatsParamsCopyWithImpl<$Res>
    extends _$GetGachaStatsParamsCopyWithImpl<$Res>
    implements _$$_GetGachaStatsParamsCopyWith<$Res> {
  __$$_GetGachaStatsParamsCopyWithImpl(_$_GetGachaStatsParams _value,
      $Res Function(_$_GetGachaStatsParams) _then)
      : super(_value, (v) => _then(v as _$_GetGachaStatsParams));

  @override
  _$_GetGachaStatsParams get _value => super._value as _$_GetGachaStatsParams;

  @override
  $Res call({
    Object? uid = freezed,
    Object? pool = freezed,
    Object? includeRuleTypes = freezed,
    Object? excludeRuleTypes = freezed,
  }) {
    return _then(_$_GetGachaStatsParams(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String?,
      includeRuleTypes: includeRuleTypes == freezed
          ? _value._includeRuleTypes
          : includeRuleTypes // ignore: cast_nullable_to_non_nullable
              as List<GachaRuleType>?,
      excludeRuleTypes: excludeRuleTypes == freezed
          ? _value._excludeRuleTypes
          : excludeRuleTypes // ignore: cast_nullable_to_non_nullable
              as List<GachaRuleType>?,
    ));
  }
}

/// @nodoc

class _$_GetGachaStatsParams implements _GetGachaStatsParams {
  const _$_GetGachaStatsParams(
      {required this.uid,
      this.pool,
      final List<GachaRuleType>? includeRuleTypes,
      final List<GachaRuleType>? excludeRuleTypes})
      : _includeRuleTypes = includeRuleTypes,
        _excludeRuleTypes = excludeRuleTypes;

  @override
  final Uid uid;
  @override
  final String? pool;
  final List<GachaRuleType>? _includeRuleTypes;
  @override
  List<GachaRuleType>? get includeRuleTypes {
    final value = _includeRuleTypes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GachaRuleType>? _excludeRuleTypes;
  @override
  List<GachaRuleType>? get excludeRuleTypes {
    final value = _excludeRuleTypes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetGachaStatsParams(uid: $uid, pool: $pool, includeRuleTypes: $includeRuleTypes, excludeRuleTypes: $excludeRuleTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetGachaStatsParams &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.pool, pool) &&
            const DeepCollectionEquality()
                .equals(other._includeRuleTypes, _includeRuleTypes) &&
            const DeepCollectionEquality()
                .equals(other._excludeRuleTypes, _excludeRuleTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(pool),
      const DeepCollectionEquality().hash(_includeRuleTypes),
      const DeepCollectionEquality().hash(_excludeRuleTypes));

  @JsonKey(ignore: true)
  @override
  _$$_GetGachaStatsParamsCopyWith<_$_GetGachaStatsParams> get copyWith =>
      __$$_GetGachaStatsParamsCopyWithImpl<_$_GetGachaStatsParams>(
          this, _$identity);
}

abstract class _GetGachaStatsParams implements GetGachaStatsParams {
  const factory _GetGachaStatsParams(
      {required final Uid uid,
      final String? pool,
      final List<GachaRuleType>? includeRuleTypes,
      final List<GachaRuleType>? excludeRuleTypes}) = _$_GetGachaStatsParams;

  @override
  Uid get uid => throw _privateConstructorUsedError;
  @override
  String? get pool => throw _privateConstructorUsedError;
  @override
  List<GachaRuleType>? get includeRuleTypes =>
      throw _privateConstructorUsedError;
  @override
  List<GachaRuleType>? get excludeRuleTypes =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetGachaStatsParamsCopyWith<_$_GetGachaStatsParams> get copyWith =>
      throw _privateConstructorUsedError;
}
