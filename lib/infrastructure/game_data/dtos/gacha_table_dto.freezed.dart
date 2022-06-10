// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_table_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GachaTableDto _$GachaTableDtoFromJson(Map<String, dynamic> json) {
  return _GachaTableDto.fromJson(json);
}

/// @nodoc
mixin _$GachaTableDto {
  String get gachaPoolId => throw _privateConstructorUsedError;
  int get gachaIndex => throw _privateConstructorUsedError;
  int get openTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  String get gachaPoolName => throw _privateConstructorUsedError;
  GachaRuleType get gachaRuleType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GachaTableDtoCopyWith<GachaTableDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaTableDtoCopyWith<$Res> {
  factory $GachaTableDtoCopyWith(
          GachaTableDto value, $Res Function(GachaTableDto) then) =
      _$GachaTableDtoCopyWithImpl<$Res>;
  $Res call(
      {String gachaPoolId,
      int gachaIndex,
      int openTime,
      int endTime,
      String gachaPoolName,
      GachaRuleType gachaRuleType});
}

/// @nodoc
class _$GachaTableDtoCopyWithImpl<$Res>
    implements $GachaTableDtoCopyWith<$Res> {
  _$GachaTableDtoCopyWithImpl(this._value, this._then);

  final GachaTableDto _value;
  // ignore: unused_field
  final $Res Function(GachaTableDto) _then;

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
abstract class _$$_GachaTableDtoCopyWith<$Res>
    implements $GachaTableDtoCopyWith<$Res> {
  factory _$$_GachaTableDtoCopyWith(
          _$_GachaTableDto value, $Res Function(_$_GachaTableDto) then) =
      __$$_GachaTableDtoCopyWithImpl<$Res>;
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
class __$$_GachaTableDtoCopyWithImpl<$Res>
    extends _$GachaTableDtoCopyWithImpl<$Res>
    implements _$$_GachaTableDtoCopyWith<$Res> {
  __$$_GachaTableDtoCopyWithImpl(
      _$_GachaTableDto _value, $Res Function(_$_GachaTableDto) _then)
      : super(_value, (v) => _then(v as _$_GachaTableDto));

  @override
  _$_GachaTableDto get _value => super._value as _$_GachaTableDto;

  @override
  $Res call({
    Object? gachaPoolId = freezed,
    Object? gachaIndex = freezed,
    Object? openTime = freezed,
    Object? endTime = freezed,
    Object? gachaPoolName = freezed,
    Object? gachaRuleType = freezed,
  }) {
    return _then(_$_GachaTableDto(
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
class _$_GachaTableDto extends _GachaTableDto {
  const _$_GachaTableDto(
      {required this.gachaPoolId,
      required this.gachaIndex,
      required this.openTime,
      required this.endTime,
      required this.gachaPoolName,
      required this.gachaRuleType})
      : super._();

  factory _$_GachaTableDto.fromJson(Map<String, dynamic> json) =>
      _$$_GachaTableDtoFromJson(json);

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
    return 'GachaTableDto(gachaPoolId: $gachaPoolId, gachaIndex: $gachaIndex, openTime: $openTime, endTime: $endTime, gachaPoolName: $gachaPoolName, gachaRuleType: $gachaRuleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaTableDto &&
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
  _$$_GachaTableDtoCopyWith<_$_GachaTableDto> get copyWith =>
      __$$_GachaTableDtoCopyWithImpl<_$_GachaTableDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GachaTableDtoToJson(this);
  }
}

abstract class _GachaTableDto extends GachaTableDto {
  const factory _GachaTableDto(
      {required final String gachaPoolId,
      required final int gachaIndex,
      required final int openTime,
      required final int endTime,
      required final String gachaPoolName,
      required final GachaRuleType gachaRuleType}) = _$_GachaTableDto;
  const _GachaTableDto._() : super._();

  factory _GachaTableDto.fromJson(Map<String, dynamic> json) =
      _$_GachaTableDto.fromJson;

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
  _$$_GachaTableDtoCopyWith<_$_GachaTableDto> get copyWith =>
      throw _privateConstructorUsedError;
}
