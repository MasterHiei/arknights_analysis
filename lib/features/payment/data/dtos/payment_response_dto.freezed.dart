// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentResponseDto _$PaymentResponseDtoFromJson(Map<String, dynamic> json) {
return _PaymentResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponseDto {

@JsonKey(name: 'status') int? get code => throw _privateConstructorUsedError;@JsonKey(defaultValue: '') String get msg => throw _privateConstructorUsedError;@JsonKey(defaultValue: []) List<PaymentRecordDto> get data => throw _privateConstructorUsedError;






Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
@JsonKey(ignore: true)
$PaymentResponseDtoCopyWith<PaymentResponseDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PaymentResponseDtoCopyWith<$Res>  {
  factory $PaymentResponseDtoCopyWith(PaymentResponseDto value, $Res Function(PaymentResponseDto) then) = _$PaymentResponseDtoCopyWithImpl<$Res, PaymentResponseDto>;
@useResult
$Res call({
@JsonKey(name: 'status') int? code,@JsonKey(defaultValue: '') String msg,@JsonKey(defaultValue: []) List<PaymentRecordDto> data
});



}

/// @nodoc
class _$PaymentResponseDtoCopyWithImpl<$Res,$Val extends PaymentResponseDto> implements $PaymentResponseDtoCopyWith<$Res> {
  _$PaymentResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? msg = null,Object? data = null,}) {
  return _then(_value.copyWith(
code: freezed == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as int?,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as List<PaymentRecordDto>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PaymentResponseDtoImplCopyWith<$Res> implements $PaymentResponseDtoCopyWith<$Res> {
  factory _$$PaymentResponseDtoImplCopyWith(_$PaymentResponseDtoImpl value, $Res Function(_$PaymentResponseDtoImpl) then) = __$$PaymentResponseDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@JsonKey(name: 'status') int? code,@JsonKey(defaultValue: '') String msg,@JsonKey(defaultValue: []) List<PaymentRecordDto> data
});



}

/// @nodoc
class __$$PaymentResponseDtoImplCopyWithImpl<$Res> extends _$PaymentResponseDtoCopyWithImpl<$Res, _$PaymentResponseDtoImpl> implements _$$PaymentResponseDtoImplCopyWith<$Res> {
  __$$PaymentResponseDtoImplCopyWithImpl(_$PaymentResponseDtoImpl _value, $Res Function(_$PaymentResponseDtoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? msg = null,Object? data = null,}) {
  return _then(_$PaymentResponseDtoImpl(
code: freezed == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as int?,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _value._data : data // ignore: cast_nullable_to_non_nullable
as List<PaymentRecordDto>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$PaymentResponseDtoImpl  implements _PaymentResponseDto {
  const _$PaymentResponseDtoImpl({@JsonKey(name: 'status') this.code, @JsonKey(defaultValue: '') required this.msg, @JsonKey(defaultValue: []) required final  List<PaymentRecordDto> data}): _data = data;

  factory _$PaymentResponseDtoImpl.fromJson(Map<String, dynamic> json) => _$$PaymentResponseDtoImplFromJson(json);

@override@JsonKey(name: 'status') final  int? code;
@override@JsonKey(defaultValue: '') final  String msg;
 final  List<PaymentRecordDto> _data;
@override@JsonKey(defaultValue: []) List<PaymentRecordDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


@override
String toString() {
  return 'PaymentResponseDto(code: $code, msg: $msg, data: $data)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PaymentResponseDtoImpl&&(identical(other.code, code) || other.code == code)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(ignore: true)
@override
int get hashCode => Object.hash(runtimeType,code,msg,const DeepCollectionEquality().hash(_data));

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$PaymentResponseDtoImplCopyWith<_$PaymentResponseDtoImpl> get copyWith => __$$PaymentResponseDtoImplCopyWithImpl<_$PaymentResponseDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$PaymentResponseDtoImplToJson(this, );
}
}


abstract class _PaymentResponseDto implements PaymentResponseDto {
  const factory _PaymentResponseDto({@JsonKey(name: 'status') final  int? code, @JsonKey(defaultValue: '') required final  String msg, @JsonKey(defaultValue: []) required final  List<PaymentRecordDto> data}) = _$PaymentResponseDtoImpl;
  

  factory _PaymentResponseDto.fromJson(Map<String, dynamic> json) = _$PaymentResponseDtoImpl.fromJson;

@override @JsonKey(name: 'status') int? get code;@override @JsonKey(defaultValue: '') String get msg;@override @JsonKey(defaultValue: []) List<PaymentRecordDto> get data;
@override @JsonKey(ignore: true)
_$$PaymentResponseDtoImplCopyWith<_$PaymentResponseDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
