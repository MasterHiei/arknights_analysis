// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_record_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentRecordDto _$PaymentRecordDtoFromJson(Map<String, dynamic> json) {
return _PaymentRecordDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentRecordDto {

 String get orderId => throw _privateConstructorUsedError; Platform get platform => throw _privateConstructorUsedError; int get amount => throw _privateConstructorUsedError; String get productName => throw _privateConstructorUsedError; int get payTime => throw _privateConstructorUsedError;@JsonKey(defaultValue: '') String get uid => throw _privateConstructorUsedError;






/// Serializes this PaymentRecordDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of PaymentRecordDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$PaymentRecordDtoCopyWith<PaymentRecordDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PaymentRecordDtoCopyWith<$Res>  {
  factory $PaymentRecordDtoCopyWith(PaymentRecordDto value, $Res Function(PaymentRecordDto) then) = _$PaymentRecordDtoCopyWithImpl<$Res, PaymentRecordDto>;
@useResult
$Res call({
 String orderId, Platform platform, int amount, String productName, int payTime,@JsonKey(defaultValue: '') String uid
});



}

/// @nodoc
class _$PaymentRecordDtoCopyWithImpl<$Res,$Val extends PaymentRecordDto> implements $PaymentRecordDtoCopyWith<$Res> {
  _$PaymentRecordDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of PaymentRecordDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? platform = null,Object? amount = null,Object? productName = null,Object? payTime = null,Object? uid = null,}) {
  return _then(_value.copyWith(
orderId: null == orderId ? _value.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _value.platform : platform // ignore: cast_nullable_to_non_nullable
as Platform,amount: null == amount ? _value.amount : amount // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _value.productName : productName // ignore: cast_nullable_to_non_nullable
as String,payTime: null == payTime ? _value.payTime : payTime // ignore: cast_nullable_to_non_nullable
as int,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PaymentRecordDtoImplCopyWith<$Res> implements $PaymentRecordDtoCopyWith<$Res> {
  factory _$$PaymentRecordDtoImplCopyWith(_$PaymentRecordDtoImpl value, $Res Function(_$PaymentRecordDtoImpl) then) = __$$PaymentRecordDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String orderId, Platform platform, int amount, String productName, int payTime,@JsonKey(defaultValue: '') String uid
});



}

/// @nodoc
class __$$PaymentRecordDtoImplCopyWithImpl<$Res> extends _$PaymentRecordDtoCopyWithImpl<$Res, _$PaymentRecordDtoImpl> implements _$$PaymentRecordDtoImplCopyWith<$Res> {
  __$$PaymentRecordDtoImplCopyWithImpl(_$PaymentRecordDtoImpl _value, $Res Function(_$PaymentRecordDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of PaymentRecordDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? platform = null,Object? amount = null,Object? productName = null,Object? payTime = null,Object? uid = null,}) {
  return _then(_$PaymentRecordDtoImpl(
orderId: null == orderId ? _value.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _value.platform : platform // ignore: cast_nullable_to_non_nullable
as Platform,amount: null == amount ? _value.amount : amount // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _value.productName : productName // ignore: cast_nullable_to_non_nullable
as String,payTime: null == payTime ? _value.payTime : payTime // ignore: cast_nullable_to_non_nullable
as int,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$PaymentRecordDtoImpl extends _PaymentRecordDto  {
  const _$PaymentRecordDtoImpl({required this.orderId, required this.platform, required this.amount, required this.productName, required this.payTime, @JsonKey(defaultValue: '') required this.uid}): super._();

  factory _$PaymentRecordDtoImpl.fromJson(Map<String, dynamic> json) => _$$PaymentRecordDtoImplFromJson(json);

@override final  String orderId;
@override final  Platform platform;
@override final  int amount;
@override final  String productName;
@override final  int payTime;
@override@JsonKey(defaultValue: '') final  String uid;

@override
String toString() {
  return 'PaymentRecordDto(orderId: $orderId, platform: $platform, amount: $amount, productName: $productName, payTime: $payTime, uid: $uid)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PaymentRecordDtoImpl&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.payTime, payTime) || other.payTime == payTime)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,platform,amount,productName,payTime,uid);

/// Create a copy of PaymentRecordDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PaymentRecordDtoImplCopyWith<_$PaymentRecordDtoImpl> get copyWith => __$$PaymentRecordDtoImplCopyWithImpl<_$PaymentRecordDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$PaymentRecordDtoImplToJson(this, );
}
}


abstract class _PaymentRecordDto extends PaymentRecordDto {
  const factory _PaymentRecordDto({required final  String orderId, required final  Platform platform, required final  int amount, required final  String productName, required final  int payTime, @JsonKey(defaultValue: '') required final  String uid}) = _$PaymentRecordDtoImpl;
  const _PaymentRecordDto._(): super._();

  factory _PaymentRecordDto.fromJson(Map<String, dynamic> json) = _$PaymentRecordDtoImpl.fromJson;

@override String get orderId;@override Platform get platform;@override int get amount;@override String get productName;@override int get payTime;@override@JsonKey(defaultValue: '') String get uid;
/// Create a copy of PaymentRecordDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PaymentRecordDtoImplCopyWith<_$PaymentRecordDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
