// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_log_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeLogDto _$ExchangeLogDtoFromJson(Map<String, dynamic> json) {
return _ExchangeLogDto.fromJson(json);
}

/// @nodoc
mixin _$ExchangeLogDto {

 String get giftName => throw _privateConstructorUsedError; String get code => throw _privateConstructorUsedError; int get ts => throw _privateConstructorUsedError;@JsonKey(defaultValue: '') String get uid => throw _privateConstructorUsedError;






/// Serializes this ExchangeLogDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of ExchangeLogDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ExchangeLogDtoCopyWith<ExchangeLogDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ExchangeLogDtoCopyWith<$Res>  {
  factory $ExchangeLogDtoCopyWith(ExchangeLogDto value, $Res Function(ExchangeLogDto) then) = _$ExchangeLogDtoCopyWithImpl<$Res, ExchangeLogDto>;
@useResult
$Res call({
 String giftName, String code, int ts,@JsonKey(defaultValue: '') String uid
});



}

/// @nodoc
class _$ExchangeLogDtoCopyWithImpl<$Res,$Val extends ExchangeLogDto> implements $ExchangeLogDtoCopyWith<$Res> {
  _$ExchangeLogDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ExchangeLogDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? giftName = null,Object? code = null,Object? ts = null,Object? uid = null,}) {
  return _then(_value.copyWith(
giftName: null == giftName ? _value.giftName : giftName // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as String,ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as int,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ExchangeLogDtoImplCopyWith<$Res> implements $ExchangeLogDtoCopyWith<$Res> {
  factory _$$ExchangeLogDtoImplCopyWith(_$ExchangeLogDtoImpl value, $Res Function(_$ExchangeLogDtoImpl) then) = __$$ExchangeLogDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String giftName, String code, int ts,@JsonKey(defaultValue: '') String uid
});



}

/// @nodoc
class __$$ExchangeLogDtoImplCopyWithImpl<$Res> extends _$ExchangeLogDtoCopyWithImpl<$Res, _$ExchangeLogDtoImpl> implements _$$ExchangeLogDtoImplCopyWith<$Res> {
  __$$ExchangeLogDtoImplCopyWithImpl(_$ExchangeLogDtoImpl _value, $Res Function(_$ExchangeLogDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of ExchangeLogDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? giftName = null,Object? code = null,Object? ts = null,Object? uid = null,}) {
  return _then(_$ExchangeLogDtoImpl(
giftName: null == giftName ? _value.giftName : giftName // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as String,ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as int,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$ExchangeLogDtoImpl extends _ExchangeLogDto  {
  const _$ExchangeLogDtoImpl({required this.giftName, required this.code, required this.ts, @JsonKey(defaultValue: '') required this.uid}): super._();

  factory _$ExchangeLogDtoImpl.fromJson(Map<String, dynamic> json) => _$$ExchangeLogDtoImplFromJson(json);

@override final  String giftName;
@override final  String code;
@override final  int ts;
@override@JsonKey(defaultValue: '') final  String uid;

@override
String toString() {
  return 'ExchangeLogDto(giftName: $giftName, code: $code, ts: $ts, uid: $uid)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ExchangeLogDtoImpl&&(identical(other.giftName, giftName) || other.giftName == giftName)&&(identical(other.code, code) || other.code == code)&&(identical(other.ts, ts) || other.ts == ts)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,giftName,code,ts,uid);

/// Create a copy of ExchangeLogDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ExchangeLogDtoImplCopyWith<_$ExchangeLogDtoImpl> get copyWith => __$$ExchangeLogDtoImplCopyWithImpl<_$ExchangeLogDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$ExchangeLogDtoImplToJson(this, );
}
}


abstract class _ExchangeLogDto extends ExchangeLogDto {
  const factory _ExchangeLogDto({required final  String giftName, required final  String code, required final  int ts, @JsonKey(defaultValue: '') required final  String uid}) = _$ExchangeLogDtoImpl;
  const _ExchangeLogDto._(): super._();

  factory _ExchangeLogDto.fromJson(Map<String, dynamic> json) = _$ExchangeLogDtoImpl.fromJson;

@override String get giftName;@override String get code;@override int get ts;@override@JsonKey(defaultValue: '') String get uid;
/// Create a copy of ExchangeLogDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ExchangeLogDtoImplCopyWith<_$ExchangeLogDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
