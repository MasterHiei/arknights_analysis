// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExchangeLog {

 String get giftName => throw _privateConstructorUsedError; String get code => throw _privateConstructorUsedError; Ts get ts => throw _privateConstructorUsedError; Uid get uid => throw _privateConstructorUsedError;







/// Create a copy of ExchangeLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ExchangeLogCopyWith<ExchangeLog> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ExchangeLogCopyWith<$Res>  {
  factory $ExchangeLogCopyWith(ExchangeLog value, $Res Function(ExchangeLog) then) = _$ExchangeLogCopyWithImpl<$Res, ExchangeLog>;
@useResult
$Res call({
 String giftName, String code, Ts ts, Uid uid
});



}

/// @nodoc
class _$ExchangeLogCopyWithImpl<$Res,$Val extends ExchangeLog> implements $ExchangeLogCopyWith<$Res> {
  _$ExchangeLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ExchangeLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? giftName = null,Object? code = null,Object? ts = null,Object? uid = null,}) {
  return _then(_value.copyWith(
giftName: null == giftName ? _value.giftName : giftName // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as String,ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ExchangeLogImplCopyWith<$Res> implements $ExchangeLogCopyWith<$Res> {
  factory _$$ExchangeLogImplCopyWith(_$ExchangeLogImpl value, $Res Function(_$ExchangeLogImpl) then) = __$$ExchangeLogImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String giftName, String code, Ts ts, Uid uid
});



}

/// @nodoc
class __$$ExchangeLogImplCopyWithImpl<$Res> extends _$ExchangeLogCopyWithImpl<$Res, _$ExchangeLogImpl> implements _$$ExchangeLogImplCopyWith<$Res> {
  __$$ExchangeLogImplCopyWithImpl(_$ExchangeLogImpl _value, $Res Function(_$ExchangeLogImpl) _then)
      : super(_value, _then);


/// Create a copy of ExchangeLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? giftName = null,Object? code = null,Object? ts = null,Object? uid = null,}) {
  return _then(_$ExchangeLogImpl(
giftName: null == giftName ? _value.giftName : giftName // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as String,ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,
  ));
}


}

/// @nodoc


class _$ExchangeLogImpl  implements _ExchangeLog {
  const _$ExchangeLogImpl({required this.giftName, required this.code, required this.ts, required this.uid});

  

@override final  String giftName;
@override final  String code;
@override final  Ts ts;
@override final  Uid uid;

@override
String toString() {
  return 'ExchangeLog(giftName: $giftName, code: $code, ts: $ts, uid: $uid)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ExchangeLogImpl&&(identical(other.giftName, giftName) || other.giftName == giftName)&&(identical(other.code, code) || other.code == code)&&(identical(other.ts, ts) || other.ts == ts)&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,giftName,code,ts,uid);

/// Create a copy of ExchangeLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ExchangeLogImplCopyWith<_$ExchangeLogImpl> get copyWith => __$$ExchangeLogImplCopyWithImpl<_$ExchangeLogImpl>(this, _$identity);








}


abstract class _ExchangeLog implements ExchangeLog {
  const factory _ExchangeLog({required final  String giftName, required final  String code, required final  Ts ts, required final  Uid uid}) = _$ExchangeLogImpl;
  

  

@override String get giftName;@override String get code;@override Ts get ts;@override Uid get uid;
/// Create a copy of ExchangeLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ExchangeLogImplCopyWith<_$ExchangeLogImpl> get copyWith => throw _privateConstructorUsedError;

}
