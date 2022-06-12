// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_pool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GachaPool {
  String get gachaPoolId => throw _privateConstructorUsedError;
  int get gachaIndex => throw _privateConstructorUsedError;
  int get openTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  String get gachaPoolName => throw _privateConstructorUsedError;
  GachaRuleType get gachaRuleType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GachaPoolCopyWith<GachaPool> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaPoolCopyWith<$Res> {
  factory $GachaPoolCopyWith(GachaPool value, $Res Function(GachaPool) then) =
      _$GachaPoolCopyWithImpl<$Res>;
  $Res call(
      {String gachaPoolId,
      int gachaIndex,
      int openTime,
      int endTime,
      String gachaPoolName,
      GachaRuleType gachaRuleType});
}

/// @nodoc
class _$GachaPoolCopyWithImpl<$Res> implements $GachaPoolCopyWith<$Res> {
  _$GachaPoolCopyWithImpl(this._value, this._then);

  final GachaPool _value;
  // ignore: unused_field
  final $Res Function(GachaPool) _then;

  @override
  $Res call({
    Object? gachaPoolId = freezed,
    Object? gachaIndex = freezed,
    Object? openTime = freezed,
    Object? endTime = freezed,
    Object? gachaPoolName = freezed,
    Object? gachaRuleType = freezed,
  }) {
    return _then(_value.copyWith(
      gachaPoolId: gachaPoolId == freezed
          ? _value.gachaPoolId
          : gachaPoolId // ignore: cast_nullable_to_non_nullable
              as String,
      gachaIndex: gachaIndex == freezed
          ? _value.gachaIndex
          : gachaIndex // ignore: cast_nullable_to_non_nullable
              as int,
      openTime: openTime == freezed
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      gachaPoolName: gachaPoolName == freezed
          ? _value.gachaPoolName
          : gachaPoolName // ignore: cast_nullable_to_non_nullable
              as String,
      gachaRuleType: gachaRuleType == freezed
          ? _value.gachaRuleType
          : gachaRuleType // ignore: cast_nullable_to_non_nullable
              as GachaRuleType,
    ));
  }
}

/// @nodoc
abstract class _$$_GachaPoolCopyWith<$Res> implements $GachaPoolCopyWith<$Res> {
  factory _$$_GachaPoolCopyWith(
          _$_GachaPool value, $Res Function(_$_GachaPool) then) =
      __$$_GachaPoolCopyWithImpl<$Res>;
  @override
  $Res call(
      {String gachaPoolId,
      int gachaIndex,
      int openTime,
      int endTime,
      String gachaPoolName,
      GachaRuleType gachaRuleType});
}

/// @nodoc
class __$$_GachaPoolCopyWithImpl<$Res> extends _$GachaPoolCopyWithImpl<$Res>
    implements _$$_GachaPoolCopyWith<$Res> {
  __$$_GachaPoolCopyWithImpl(
      _$_GachaPool _value, $Res Function(_$_GachaPool) _then)
      : super(_value, (v) => _then(v as _$_GachaPool));

  @override
  _$_GachaPool get _value => super._value as _$_GachaPool;

  @override
  $Res call({
    Object? gachaPoolId = freezed,
    Object? gachaIndex = freezed,
    Object? openTime = freezed,
    Object? endTime = freezed,
    Object? gachaPoolName = freezed,
    Object? gachaRuleType = freezed,
  }) {
    return _then(_$_GachaPool(
      gachaPoolId: gachaPoolId == freezed
          ? _value.gachaPoolId
          : gachaPoolId // ignore: cast_nullable_to_non_nullable
              as String,
      gachaIndex: gachaIndex == freezed
          ? _value.gachaIndex
          : gachaIndex // ignore: cast_nullable_to_non_nullable
              as int,
      openTime: openTime == freezed
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      gachaPoolName: gachaPoolName == freezed
          ? _value.gachaPoolName
          : gachaPoolName // ignore: cast_nullable_to_non_nullable
              as String,
      gachaRuleType: gachaRuleType == freezed
          ? _value.gachaRuleType
          : gachaRuleType // ignore: cast_nullable_to_non_nullable
              as GachaRuleType,
    ));
  }
}

/// @nodoc

class _$_GachaPool extends _GachaPool {
  const _$_GachaPool(
      {required this.gachaPoolId,
      required this.gachaIndex,
      required this.openTime,
      required this.endTime,
      required this.gachaPoolName,
      required this.gachaRuleType})
      : super._();

  @override
  final String gachaPoolId;
  @override
  final int gachaIndex;
  @override
  final int openTime;
  @override
  final int endTime;
  @override
  final String gachaPoolName;
  @override
  final GachaRuleType gachaRuleType;

  @override
  String toString() {
    return 'GachaPool(gachaPoolId: $gachaPoolId, gachaIndex: $gachaIndex, openTime: $openTime, endTime: $endTime, gachaPoolName: $gachaPoolName, gachaRuleType: $gachaRuleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaPool &&
            const DeepCollectionEquality()
                .equals(other.gachaPoolId, gachaPoolId) &&
            const DeepCollectionEquality()
                .equals(other.gachaIndex, gachaIndex) &&
            const DeepCollectionEquality().equals(other.openTime, openTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality()
                .equals(other.gachaPoolName, gachaPoolName) &&
            const DeepCollectionEquality()
                .equals(other.gachaRuleType, gachaRuleType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gachaPoolId),
      const DeepCollectionEquality().hash(gachaIndex),
      const DeepCollectionEquality().hash(openTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(gachaPoolName),
      const DeepCollectionEquality().hash(gachaRuleType));

  @JsonKey(ignore: true)
  @override
  _$$_GachaPoolCopyWith<_$_GachaPool> get copyWith =>
      __$$_GachaPoolCopyWithImpl<_$_GachaPool>(this, _$identity);
}

abstract class _GachaPool extends GachaPool {
  const factory _GachaPool(
      {required final String gachaPoolId,
      required final int gachaIndex,
      required final int openTime,
      required final int endTime,
      required final String gachaPoolName,
      required final GachaRuleType gachaRuleType}) = _$_GachaPool;
  const _GachaPool._() : super._();

  @override
  String get gachaPoolId => throw _privateConstructorUsedError;
  @override
  int get gachaIndex => throw _privateConstructorUsedError;
  @override
  int get openTime => throw _privateConstructorUsedError;
  @override
  int get endTime => throw _privateConstructorUsedError;
  @override
  String get gachaPoolName => throw _privateConstructorUsedError;
  @override
  GachaRuleType get gachaRuleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GachaPoolCopyWith<_$_GachaPool> get copyWith =>
      throw _privateConstructorUsedError;
}
