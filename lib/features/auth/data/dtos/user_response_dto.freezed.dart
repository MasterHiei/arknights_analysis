// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) {
return _UserResponseDto.fromJson(json);
}

/// @nodoc
mixin _$UserResponseDto {

 int? get status => throw _privateConstructorUsedError;@JsonKey(defaultValue: '') String get msg => throw _privateConstructorUsedError; UserDto? get data => throw _privateConstructorUsedError;






Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
@JsonKey(ignore: true)
$UserResponseDtoCopyWith<UserResponseDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $UserResponseDtoCopyWith<$Res>  {
  factory $UserResponseDtoCopyWith(UserResponseDto value, $Res Function(UserResponseDto) then) = _$UserResponseDtoCopyWithImpl<$Res, UserResponseDto>;
@useResult
$Res call({
 int? status,@JsonKey(defaultValue: '') String msg, UserDto? data
});


$UserDtoCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserResponseDtoCopyWithImpl<$Res,$Val extends UserResponseDto> implements $UserResponseDtoCopyWith<$Res> {
  _$UserResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? msg = null,Object? data = freezed,}) {
  return _then(_value.copyWith(
status: freezed == status ? _value.status : status // ignore: cast_nullable_to_non_nullable
as int?,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as UserDto?,
  )as $Val);
}
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res>? get data {
    if (_value.data == null) {
    return null;
  }

  return $UserDtoCopyWith<$Res>(_value.data!, (value) {
    return _then(_value.copyWith(data: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$UserResponseDtoImplCopyWith<$Res> implements $UserResponseDtoCopyWith<$Res> {
  factory _$$UserResponseDtoImplCopyWith(_$UserResponseDtoImpl value, $Res Function(_$UserResponseDtoImpl) then) = __$$UserResponseDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int? status,@JsonKey(defaultValue: '') String msg, UserDto? data
});


@override $UserDtoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserResponseDtoImplCopyWithImpl<$Res> extends _$UserResponseDtoCopyWithImpl<$Res, _$UserResponseDtoImpl> implements _$$UserResponseDtoImplCopyWith<$Res> {
  __$$UserResponseDtoImplCopyWithImpl(_$UserResponseDtoImpl _value, $Res Function(_$UserResponseDtoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? msg = null,Object? data = freezed,}) {
  return _then(_$UserResponseDtoImpl(
status: freezed == status ? _value.status : status // ignore: cast_nullable_to_non_nullable
as int?,msg: null == msg ? _value.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as UserDto?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$UserResponseDtoImpl  implements _UserResponseDto {
  const _$UserResponseDtoImpl({this.status, @JsonKey(defaultValue: '') required this.msg, this.data});

  factory _$UserResponseDtoImpl.fromJson(Map<String, dynamic> json) => _$$UserResponseDtoImplFromJson(json);

@override final  int? status;
@override@JsonKey(defaultValue: '') final  String msg;
@override final  UserDto? data;

@override
String toString() {
  return 'UserResponseDto(status: $status, msg: $msg, data: $data)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UserResponseDtoImpl&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(ignore: true)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$UserResponseDtoImplCopyWith<_$UserResponseDtoImpl> get copyWith => __$$UserResponseDtoImplCopyWithImpl<_$UserResponseDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$UserResponseDtoImplToJson(this, );
}
}


abstract class _UserResponseDto implements UserResponseDto {
  const factory _UserResponseDto({final  int? status, @JsonKey(defaultValue: '') required final  String msg, final  UserDto? data}) = _$UserResponseDtoImpl;
  

  factory _UserResponseDto.fromJson(Map<String, dynamic> json) = _$UserResponseDtoImpl.fromJson;

@override  int? get status;@override @JsonKey(defaultValue: '') String get msg;@override  UserDto? get data;
@override @JsonKey(ignore: true)
_$$UserResponseDtoImplCopyWith<_$UserResponseDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
