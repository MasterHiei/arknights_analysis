// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diamond_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiamondResponseDto _$DiamondResponseDtoFromJson(Map<String, dynamic> json) {
return _DiamondResponseDto.fromJson(json);
}

/// @nodoc
mixin _$DiamondResponseDto {

 int? get code => throw _privateConstructorUsedError;@JsonKey(defaultValue: '') String get msg => throw _privateConstructorUsedError;@JsonKey(fromJson: _dataFromJson) DiamondDto? get data => throw _privateConstructorUsedError;






/// Serializes this DiamondResponseDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of DiamondResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$DiamondResponseDtoCopyWith<DiamondResponseDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $DiamondResponseDtoCopyWith<$Res>  {
  factory $DiamondResponseDtoCopyWith(DiamondResponseDto value, $Res Function(DiamondResponseDto) then) = _$DiamondResponseDtoCopyWithImpl<$Res, DiamondResponseDto>;
@useResult
$Res call({
 int? code,@JsonKey(defaultValue: '') String msg,@JsonKey(fromJson: _dataFromJson) DiamondDto? data
});


$DiamondDtoCopyWith<$Res>? get data;
}

/// @nodoc
class _$DiamondResponseDtoCopyWithImpl<$Res,$Val extends DiamondResponseDto> implements $DiamondResponseDtoCopyWith<$Res> {
  _$DiamondResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of DiamondResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? msg = null,Object? data = freezed,}) {
  return _then(_value.copyWith(
code: freezed == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as int?,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as DiamondDto?,
  )as $Val);
}
/// Create a copy of DiamondResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiamondDtoCopyWith<$Res>? get data {
    if (_value.data == null) {
    return null;
  }

  return $DiamondDtoCopyWith<$Res>(_value.data!, (value) {
    return _then(_value.copyWith(data: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$DiamondResponseDtoImplCopyWith<$Res> implements $DiamondResponseDtoCopyWith<$Res> {
  factory _$$DiamondResponseDtoImplCopyWith(_$DiamondResponseDtoImpl value, $Res Function(_$DiamondResponseDtoImpl) then) = __$$DiamondResponseDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int? code,@JsonKey(defaultValue: '') String msg,@JsonKey(fromJson: _dataFromJson) DiamondDto? data
});


@override $DiamondDtoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DiamondResponseDtoImplCopyWithImpl<$Res> extends _$DiamondResponseDtoCopyWithImpl<$Res, _$DiamondResponseDtoImpl> implements _$$DiamondResponseDtoImplCopyWith<$Res> {
  __$$DiamondResponseDtoImplCopyWithImpl(_$DiamondResponseDtoImpl _value, $Res Function(_$DiamondResponseDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of DiamondResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? msg = null,Object? data = freezed,}) {
  return _then(_$DiamondResponseDtoImpl(
code: freezed == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as int?,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as DiamondDto?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$DiamondResponseDtoImpl  implements _DiamondResponseDto {
  const _$DiamondResponseDtoImpl({this.code, @JsonKey(defaultValue: '') required this.msg, @JsonKey(fromJson: _dataFromJson) this.data});

  factory _$DiamondResponseDtoImpl.fromJson(Map<String, dynamic> json) => _$$DiamondResponseDtoImplFromJson(json);

@override final  int? code;
@override@JsonKey(defaultValue: '') final  String msg;
@override@JsonKey(fromJson: _dataFromJson) final  DiamondDto? data;

@override
String toString() {
  return 'DiamondResponseDto(code: $code, msg: $msg, data: $data)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DiamondResponseDtoImpl&&(identical(other.code, code) || other.code == code)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,msg,data);

/// Create a copy of DiamondResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DiamondResponseDtoImplCopyWith<_$DiamondResponseDtoImpl> get copyWith => __$$DiamondResponseDtoImplCopyWithImpl<_$DiamondResponseDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$DiamondResponseDtoImplToJson(this, );
}
}


abstract class _DiamondResponseDto implements DiamondResponseDto {
  const factory _DiamondResponseDto({final  int? code, @JsonKey(defaultValue: '') required final  String msg, @JsonKey(fromJson: _dataFromJson) final  DiamondDto? data}) = _$DiamondResponseDtoImpl;
  

  factory _DiamondResponseDto.fromJson(Map<String, dynamic> json) = _$DiamondResponseDtoImpl.fromJson;

@override int? get code;@override@JsonKey(defaultValue: '') String get msg;@override@JsonKey(fromJson: _dataFromJson) DiamondDto? get data;
/// Create a copy of DiamondResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DiamondResponseDtoImplCopyWith<_$DiamondResponseDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
