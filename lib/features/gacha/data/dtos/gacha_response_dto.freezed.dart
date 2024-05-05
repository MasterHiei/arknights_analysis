// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GachaResponseDto _$GachaResponseDtoFromJson(Map<String, dynamic> json) {
return _GachaResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GachaResponseDto {

 int? get code => throw _privateConstructorUsedError;@JsonKey(defaultValue: '') String get msg => throw _privateConstructorUsedError;@JsonKey(fromJson: _dataFromJson) GachaDto? get data => throw _privateConstructorUsedError;






Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
@JsonKey(ignore: true)
$GachaResponseDtoCopyWith<GachaResponseDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaResponseDtoCopyWith<$Res>  {
  factory $GachaResponseDtoCopyWith(GachaResponseDto value, $Res Function(GachaResponseDto) then) = _$GachaResponseDtoCopyWithImpl<$Res, GachaResponseDto>;
@useResult
$Res call({
 int? code,@JsonKey(defaultValue: '') String msg,@JsonKey(fromJson: _dataFromJson) GachaDto? data
});


$GachaDtoCopyWith<$Res>? get data;
}

/// @nodoc
class _$GachaResponseDtoCopyWithImpl<$Res,$Val extends GachaResponseDto> implements $GachaResponseDtoCopyWith<$Res> {
  _$GachaResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? msg = null,Object? data = freezed,}) {
  return _then(_value.copyWith(
code: freezed == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as int?,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as GachaDto?,
  )as $Val);
}
@override
@pragma('vm:prefer-inline')
$GachaDtoCopyWith<$Res>? get data {
    if (_value.data == null) {
    return null;
  }

  return $GachaDtoCopyWith<$Res>(_value.data!, (value) {
    return _then(_value.copyWith(data: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$GachaResponseDtoImplCopyWith<$Res> implements $GachaResponseDtoCopyWith<$Res> {
  factory _$$GachaResponseDtoImplCopyWith(_$GachaResponseDtoImpl value, $Res Function(_$GachaResponseDtoImpl) then) = __$$GachaResponseDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int? code,@JsonKey(defaultValue: '') String msg,@JsonKey(fromJson: _dataFromJson) GachaDto? data
});


@override $GachaDtoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GachaResponseDtoImplCopyWithImpl<$Res> extends _$GachaResponseDtoCopyWithImpl<$Res, _$GachaResponseDtoImpl> implements _$$GachaResponseDtoImplCopyWith<$Res> {
  __$$GachaResponseDtoImplCopyWithImpl(_$GachaResponseDtoImpl _value, $Res Function(_$GachaResponseDtoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? msg = null,Object? data = freezed,}) {
  return _then(_$GachaResponseDtoImpl(
code: freezed == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as int?,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as GachaDto?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$GachaResponseDtoImpl  implements _GachaResponseDto {
  const _$GachaResponseDtoImpl({this.code, @JsonKey(defaultValue: '') required this.msg, @JsonKey(fromJson: _dataFromJson) this.data});

  factory _$GachaResponseDtoImpl.fromJson(Map<String, dynamic> json) => _$$GachaResponseDtoImplFromJson(json);

@override final  int? code;
@override@JsonKey(defaultValue: '') final  String msg;
@override@JsonKey(fromJson: _dataFromJson) final  GachaDto? data;

@override
String toString() {
  return 'GachaResponseDto(code: $code, msg: $msg, data: $data)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaResponseDtoImpl&&(identical(other.code, code) || other.code == code)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(ignore: true)
@override
int get hashCode => Object.hash(runtimeType,code,msg,data);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$GachaResponseDtoImplCopyWith<_$GachaResponseDtoImpl> get copyWith => __$$GachaResponseDtoImplCopyWithImpl<_$GachaResponseDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$GachaResponseDtoImplToJson(this, );
}
}


abstract class _GachaResponseDto implements GachaResponseDto {
  const factory _GachaResponseDto({final  int? code, @JsonKey(defaultValue: '') required final  String msg, @JsonKey(fromJson: _dataFromJson) final  GachaDto? data}) = _$GachaResponseDtoImpl;
  

  factory _GachaResponseDto.fromJson(Map<String, dynamic> json) = _$GachaResponseDtoImpl.fromJson;

@override  int? get code;@override @JsonKey(defaultValue: '') String get msg;@override @JsonKey(fromJson: _dataFromJson) GachaDto? get data;
@override @JsonKey(ignore: true)
_$$GachaResponseDtoImplCopyWith<_$GachaResponseDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
