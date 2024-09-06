// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_pool_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GachaPoolDto _$GachaPoolDtoFromJson(Map<String, dynamic> json) {
return _GachaPoolDto.fromJson(json);
}

/// @nodoc
mixin _$GachaPoolDto {

 String get gachaPoolId => throw _privateConstructorUsedError; int get gachaIndex => throw _privateConstructorUsedError; int get openTime => throw _privateConstructorUsedError; int get endTime => throw _privateConstructorUsedError; String get gachaPoolName => throw _privateConstructorUsedError; GachaRuleType get gachaRuleType => throw _privateConstructorUsedError;






/// Serializes this GachaPoolDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of GachaPoolDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$GachaPoolDtoCopyWith<GachaPoolDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaPoolDtoCopyWith<$Res>  {
  factory $GachaPoolDtoCopyWith(GachaPoolDto value, $Res Function(GachaPoolDto) then) = _$GachaPoolDtoCopyWithImpl<$Res, GachaPoolDto>;
@useResult
$Res call({
 String gachaPoolId, int gachaIndex, int openTime, int endTime, String gachaPoolName, GachaRuleType gachaRuleType
});



}

/// @nodoc
class _$GachaPoolDtoCopyWithImpl<$Res,$Val extends GachaPoolDto> implements $GachaPoolDtoCopyWith<$Res> {
  _$GachaPoolDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of GachaPoolDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gachaPoolId = null,Object? gachaIndex = null,Object? openTime = null,Object? endTime = null,Object? gachaPoolName = null,Object? gachaRuleType = null,}) {
  return _then(_value.copyWith(
gachaPoolId: null == gachaPoolId ? _value.gachaPoolId : gachaPoolId // ignore: cast_nullable_to_non_nullable
as String,gachaIndex: null == gachaIndex ? _value.gachaIndex : gachaIndex // ignore: cast_nullable_to_non_nullable
as int,openTime: null == openTime ? _value.openTime : openTime // ignore: cast_nullable_to_non_nullable
as int,endTime: null == endTime ? _value.endTime : endTime // ignore: cast_nullable_to_non_nullable
as int,gachaPoolName: null == gachaPoolName ? _value.gachaPoolName : gachaPoolName // ignore: cast_nullable_to_non_nullable
as String,gachaRuleType: null == gachaRuleType ? _value.gachaRuleType : gachaRuleType // ignore: cast_nullable_to_non_nullable
as GachaRuleType,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaPoolDtoImplCopyWith<$Res> implements $GachaPoolDtoCopyWith<$Res> {
  factory _$$GachaPoolDtoImplCopyWith(_$GachaPoolDtoImpl value, $Res Function(_$GachaPoolDtoImpl) then) = __$$GachaPoolDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String gachaPoolId, int gachaIndex, int openTime, int endTime, String gachaPoolName, GachaRuleType gachaRuleType
});



}

/// @nodoc
class __$$GachaPoolDtoImplCopyWithImpl<$Res> extends _$GachaPoolDtoCopyWithImpl<$Res, _$GachaPoolDtoImpl> implements _$$GachaPoolDtoImplCopyWith<$Res> {
  __$$GachaPoolDtoImplCopyWithImpl(_$GachaPoolDtoImpl _value, $Res Function(_$GachaPoolDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of GachaPoolDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gachaPoolId = null,Object? gachaIndex = null,Object? openTime = null,Object? endTime = null,Object? gachaPoolName = null,Object? gachaRuleType = null,}) {
  return _then(_$GachaPoolDtoImpl(
gachaPoolId: null == gachaPoolId ? _value.gachaPoolId : gachaPoolId // ignore: cast_nullable_to_non_nullable
as String,gachaIndex: null == gachaIndex ? _value.gachaIndex : gachaIndex // ignore: cast_nullable_to_non_nullable
as int,openTime: null == openTime ? _value.openTime : openTime // ignore: cast_nullable_to_non_nullable
as int,endTime: null == endTime ? _value.endTime : endTime // ignore: cast_nullable_to_non_nullable
as int,gachaPoolName: null == gachaPoolName ? _value.gachaPoolName : gachaPoolName // ignore: cast_nullable_to_non_nullable
as String,gachaRuleType: null == gachaRuleType ? _value.gachaRuleType : gachaRuleType // ignore: cast_nullable_to_non_nullable
as GachaRuleType,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$GachaPoolDtoImpl extends _GachaPoolDto  {
  const _$GachaPoolDtoImpl({required this.gachaPoolId, required this.gachaIndex, required this.openTime, required this.endTime, required this.gachaPoolName, required this.gachaRuleType}): super._();

  factory _$GachaPoolDtoImpl.fromJson(Map<String, dynamic> json) => _$$GachaPoolDtoImplFromJson(json);

@override final  String gachaPoolId;
@override final  int gachaIndex;
@override final  int openTime;
@override final  int endTime;
@override final  String gachaPoolName;
@override final  GachaRuleType gachaRuleType;

@override
String toString() {
  return 'GachaPoolDto(gachaPoolId: $gachaPoolId, gachaIndex: $gachaIndex, openTime: $openTime, endTime: $endTime, gachaPoolName: $gachaPoolName, gachaRuleType: $gachaRuleType)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaPoolDtoImpl&&(identical(other.gachaPoolId, gachaPoolId) || other.gachaPoolId == gachaPoolId)&&(identical(other.gachaIndex, gachaIndex) || other.gachaIndex == gachaIndex)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.gachaPoolName, gachaPoolName) || other.gachaPoolName == gachaPoolName)&&(identical(other.gachaRuleType, gachaRuleType) || other.gachaRuleType == gachaRuleType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gachaPoolId,gachaIndex,openTime,endTime,gachaPoolName,gachaRuleType);

/// Create a copy of GachaPoolDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GachaPoolDtoImplCopyWith<_$GachaPoolDtoImpl> get copyWith => __$$GachaPoolDtoImplCopyWithImpl<_$GachaPoolDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$GachaPoolDtoImplToJson(this, );
}
}


abstract class _GachaPoolDto extends GachaPoolDto {
  const factory _GachaPoolDto({required final  String gachaPoolId, required final  int gachaIndex, required final  int openTime, required final  int endTime, required final  String gachaPoolName, required final  GachaRuleType gachaRuleType}) = _$GachaPoolDtoImpl;
  const _GachaPoolDto._(): super._();

  factory _GachaPoolDto.fromJson(Map<String, dynamic> json) = _$GachaPoolDtoImpl.fromJson;

@override String get gachaPoolId;@override int get gachaIndex;@override int get openTime;@override int get endTime;@override String get gachaPoolName;@override GachaRuleType get gachaRuleType;
/// Create a copy of GachaPoolDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$GachaPoolDtoImplCopyWith<_$GachaPoolDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
