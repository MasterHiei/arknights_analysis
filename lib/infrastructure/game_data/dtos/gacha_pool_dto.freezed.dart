// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_pool_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GachaPoolDto _$GachaPoolDtoFromJson(Map<String, dynamic> json) {
  return _GachaPoolDto.fromJson(json);
}

/// @nodoc
mixin _$GachaPoolDto {
  String get gachaPoolId => throw _privateConstructorUsedError;
  int get gachaIndex => throw _privateConstructorUsedError;
  int get openTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  String get gachaPoolName => throw _privateConstructorUsedError;
  GachaRuleType get gachaRuleType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GachaPoolDtoCopyWith<GachaPoolDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaPoolDtoCopyWith<$Res> {
  factory $GachaPoolDtoCopyWith(
          GachaPoolDto value, $Res Function(GachaPoolDto) then) =
      _$GachaPoolDtoCopyWithImpl<$Res>;
  $Res call(
      {String gachaPoolId,
      int gachaIndex,
      int openTime,
      int endTime,
      String gachaPoolName,
      GachaRuleType gachaRuleType});
}

/// @nodoc
class _$GachaPoolDtoCopyWithImpl<$Res> implements $GachaPoolDtoCopyWith<$Res> {
  _$GachaPoolDtoCopyWithImpl(this._value, this._then);

  final GachaPoolDto _value;
  // ignore: unused_field
  final $Res Function(GachaPoolDto) _then;

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
abstract class _$$_GachaPoolDtoCopyWith<$Res>
    implements $GachaPoolDtoCopyWith<$Res> {
  factory _$$_GachaPoolDtoCopyWith(
          _$_GachaPoolDto value, $Res Function(_$_GachaPoolDto) then) =
      __$$_GachaPoolDtoCopyWithImpl<$Res>;
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
class __$$_GachaPoolDtoCopyWithImpl<$Res>
    extends _$GachaPoolDtoCopyWithImpl<$Res>
    implements _$$_GachaPoolDtoCopyWith<$Res> {
  __$$_GachaPoolDtoCopyWithImpl(
      _$_GachaPoolDto _value, $Res Function(_$_GachaPoolDto) _then)
      : super(_value, (v) => _then(v as _$_GachaPoolDto));

  @override
  _$_GachaPoolDto get _value => super._value as _$_GachaPoolDto;

  @override
  $Res call({
    Object? gachaPoolId = freezed,
    Object? gachaIndex = freezed,
    Object? openTime = freezed,
    Object? endTime = freezed,
    Object? gachaPoolName = freezed,
    Object? gachaRuleType = freezed,
  }) {
    return _then(_$_GachaPoolDto(
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
@JsonSerializable()
class _$_GachaPoolDto extends _GachaPoolDto {
  const _$_GachaPoolDto(
      {required this.gachaPoolId,
      required this.gachaIndex,
      required this.openTime,
      required this.endTime,
      required this.gachaPoolName,
      required this.gachaRuleType})
      : super._();

  factory _$_GachaPoolDto.fromJson(Map<String, dynamic> json) =>
      _$$_GachaPoolDtoFromJson(json);

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
    return 'GachaPoolDto(gachaPoolId: $gachaPoolId, gachaIndex: $gachaIndex, openTime: $openTime, endTime: $endTime, gachaPoolName: $gachaPoolName, gachaRuleType: $gachaRuleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaPoolDto &&
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

  @JsonKey(ignore: true)
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
  _$$_GachaPoolDtoCopyWith<_$_GachaPoolDto> get copyWith =>
      __$$_GachaPoolDtoCopyWithImpl<_$_GachaPoolDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GachaPoolDtoToJson(this);
  }
}

abstract class _GachaPoolDto extends GachaPoolDto {
  const factory _GachaPoolDto(
      {required final String gachaPoolId,
      required final int gachaIndex,
      required final int openTime,
      required final int endTime,
      required final String gachaPoolName,
      required final GachaRuleType gachaRuleType}) = _$_GachaPoolDto;
  const _GachaPoolDto._() : super._();

  factory _GachaPoolDto.fromJson(Map<String, dynamic> json) =
      _$_GachaPoolDto.fromJson;

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
  _$$_GachaPoolDtoCopyWith<_$_GachaPoolDto> get copyWith =>
      throw _privateConstructorUsedError;
}
