// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_log_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeLogResponseDto _$ExchangeLogResponseDtoFromJson(Map<String, dynamic> json) {
return _ExchangeLogResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ExchangeLogResponseDto {

 int get code => throw _privateConstructorUsedError; List<ExchangeLogDto> get data => throw _privateConstructorUsedError; String get msg => throw _privateConstructorUsedError;






/// Serializes this ExchangeLogResponseDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of ExchangeLogResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ExchangeLogResponseDtoCopyWith<ExchangeLogResponseDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ExchangeLogResponseDtoCopyWith<$Res>  {
  factory $ExchangeLogResponseDtoCopyWith(ExchangeLogResponseDto value, $Res Function(ExchangeLogResponseDto) then) = _$ExchangeLogResponseDtoCopyWithImpl<$Res, ExchangeLogResponseDto>;
@useResult
$Res call({
 int code, List<ExchangeLogDto> data, String msg
});



}

/// @nodoc
class _$ExchangeLogResponseDtoCopyWithImpl<$Res,$Val extends ExchangeLogResponseDto> implements $ExchangeLogResponseDtoCopyWith<$Res> {
  _$ExchangeLogResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ExchangeLogResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? data = null,Object? msg = null,}) {
  return _then(_value.copyWith(
code: null == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as List<ExchangeLogDto>,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ExchangeLogResponseDtoImplCopyWith<$Res> implements $ExchangeLogResponseDtoCopyWith<$Res> {
  factory _$$ExchangeLogResponseDtoImplCopyWith(_$ExchangeLogResponseDtoImpl value, $Res Function(_$ExchangeLogResponseDtoImpl) then) = __$$ExchangeLogResponseDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int code, List<ExchangeLogDto> data, String msg
});



}

/// @nodoc
class __$$ExchangeLogResponseDtoImplCopyWithImpl<$Res> extends _$ExchangeLogResponseDtoCopyWithImpl<$Res, _$ExchangeLogResponseDtoImpl> implements _$$ExchangeLogResponseDtoImplCopyWith<$Res> {
  __$$ExchangeLogResponseDtoImplCopyWithImpl(_$ExchangeLogResponseDtoImpl _value, $Res Function(_$ExchangeLogResponseDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of ExchangeLogResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? data = null,Object? msg = null,}) {
  return _then(_$ExchangeLogResponseDtoImpl(
code: null == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _value._data : data // ignore: cast_nullable_to_non_nullable
as List<ExchangeLogDto>,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$ExchangeLogResponseDtoImpl  implements _ExchangeLogResponseDto {
  const _$ExchangeLogResponseDtoImpl({required this.code, required final  List<ExchangeLogDto> data, required this.msg}): _data = data;

  factory _$ExchangeLogResponseDtoImpl.fromJson(Map<String, dynamic> json) => _$$ExchangeLogResponseDtoImplFromJson(json);

@override final  int code;
 final  List<ExchangeLogDto> _data;
@override List<ExchangeLogDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String msg;

@override
String toString() {
  return 'ExchangeLogResponseDto(code: $code, data: $data, msg: $msg)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ExchangeLogResponseDtoImpl&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.msg, msg) || other.msg == msg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,const DeepCollectionEquality().hash(_data),msg);

/// Create a copy of ExchangeLogResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ExchangeLogResponseDtoImplCopyWith<_$ExchangeLogResponseDtoImpl> get copyWith => __$$ExchangeLogResponseDtoImplCopyWithImpl<_$ExchangeLogResponseDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$ExchangeLogResponseDtoImplToJson(this, );
}
}


abstract class _ExchangeLogResponseDto implements ExchangeLogResponseDto {
  const factory _ExchangeLogResponseDto({required final  int code, required final  List<ExchangeLogDto> data, required final  String msg}) = _$ExchangeLogResponseDtoImpl;
  

  factory _ExchangeLogResponseDto.fromJson(Map<String, dynamic> json) = _$ExchangeLogResponseDtoImpl.fromJson;

@override int get code;@override List<ExchangeLogDto> get data;@override String get msg;
/// Create a copy of ExchangeLogResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ExchangeLogResponseDtoImplCopyWith<_$ExchangeLogResponseDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
