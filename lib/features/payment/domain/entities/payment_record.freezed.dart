// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentRecord {

 String get orderId => throw _privateConstructorUsedError; Platform get platform => throw _privateConstructorUsedError; int get amount => throw _privateConstructorUsedError; String get productName => throw _privateConstructorUsedError; Ts get payTime => throw _privateConstructorUsedError; Uid get uid => throw _privateConstructorUsedError;







/// Create a copy of PaymentRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$PaymentRecordCopyWith<PaymentRecord> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PaymentRecordCopyWith<$Res>  {
  factory $PaymentRecordCopyWith(PaymentRecord value, $Res Function(PaymentRecord) then) = _$PaymentRecordCopyWithImpl<$Res, PaymentRecord>;
@useResult
$Res call({
 String orderId, Platform platform, int amount, String productName, Ts payTime, Uid uid
});



}

/// @nodoc
class _$PaymentRecordCopyWithImpl<$Res,$Val extends PaymentRecord> implements $PaymentRecordCopyWith<$Res> {
  _$PaymentRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of PaymentRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? platform = null,Object? amount = null,Object? productName = null,Object? payTime = null,Object? uid = null,}) {
  return _then(_value.copyWith(
orderId: null == orderId ? _value.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _value.platform : platform // ignore: cast_nullable_to_non_nullable
as Platform,amount: null == amount ? _value.amount : amount // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _value.productName : productName // ignore: cast_nullable_to_non_nullable
as String,payTime: null == payTime ? _value.payTime : payTime // ignore: cast_nullable_to_non_nullable
as Ts,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PaymentRecordImplCopyWith<$Res> implements $PaymentRecordCopyWith<$Res> {
  factory _$$PaymentRecordImplCopyWith(_$PaymentRecordImpl value, $Res Function(_$PaymentRecordImpl) then) = __$$PaymentRecordImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String orderId, Platform platform, int amount, String productName, Ts payTime, Uid uid
});



}

/// @nodoc
class __$$PaymentRecordImplCopyWithImpl<$Res> extends _$PaymentRecordCopyWithImpl<$Res, _$PaymentRecordImpl> implements _$$PaymentRecordImplCopyWith<$Res> {
  __$$PaymentRecordImplCopyWithImpl(_$PaymentRecordImpl _value, $Res Function(_$PaymentRecordImpl) _then)
      : super(_value, _then);


/// Create a copy of PaymentRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? platform = null,Object? amount = null,Object? productName = null,Object? payTime = null,Object? uid = null,}) {
  return _then(_$PaymentRecordImpl(
orderId: null == orderId ? _value.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _value.platform : platform // ignore: cast_nullable_to_non_nullable
as Platform,amount: null == amount ? _value.amount : amount // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _value.productName : productName // ignore: cast_nullable_to_non_nullable
as String,payTime: null == payTime ? _value.payTime : payTime // ignore: cast_nullable_to_non_nullable
as Ts,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,
  ));
}


}

/// @nodoc


class _$PaymentRecordImpl extends _PaymentRecord  {
  const _$PaymentRecordImpl({required this.orderId, required this.platform, required this.amount, required this.productName, required this.payTime, required this.uid}): super._();

  

@override final  String orderId;
@override final  Platform platform;
@override final  int amount;
@override final  String productName;
@override final  Ts payTime;
@override final  Uid uid;

@override
String toString() {
  return 'PaymentRecord(orderId: $orderId, platform: $platform, amount: $amount, productName: $productName, payTime: $payTime, uid: $uid)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PaymentRecordImpl&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.payTime, payTime) || other.payTime == payTime)&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,platform,amount,productName,payTime,uid);

/// Create a copy of PaymentRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PaymentRecordImplCopyWith<_$PaymentRecordImpl> get copyWith => __$$PaymentRecordImplCopyWithImpl<_$PaymentRecordImpl>(this, _$identity);








}


abstract class _PaymentRecord extends PaymentRecord {
  const factory _PaymentRecord({required final  String orderId, required final  Platform platform, required final  int amount, required final  String productName, required final  Ts payTime, required final  Uid uid}) = _$PaymentRecordImpl;
  const _PaymentRecord._(): super._();

  

@override String get orderId;@override Platform get platform;@override int get amount;@override String get productName;@override Ts get payTime;@override Uid get uid;
/// Create a copy of PaymentRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PaymentRecordImplCopyWith<_$PaymentRecordImpl> get copyWith => throw _privateConstructorUsedError;

}
