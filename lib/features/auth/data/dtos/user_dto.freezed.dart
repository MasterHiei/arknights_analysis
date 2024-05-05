// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {

 String get uid => throw _privateConstructorUsedError; String get nickName => throw _privateConstructorUsedError;@JsonKey(defaultValue: '') String get token => throw _privateConstructorUsedError;






Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
@JsonKey(ignore: true)
$UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) = _$UserDtoCopyWithImpl<$Res, UserDto>;
@useResult
$Res call({
 String uid, String nickName,@JsonKey(defaultValue: '') String token
});



}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res,$Val extends UserDto> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? nickName = null,Object? token = null,}) {
  return _then(_value.copyWith(
uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _value.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _value.token : token // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(_$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) = __$$UserDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String uid, String nickName,@JsonKey(defaultValue: '') String token
});



}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl> implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(_$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? nickName = null,Object? token = null,}) {
  return _then(_$UserDtoImpl(
uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _value.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _value.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$UserDtoImpl extends _UserDto  {
  const _$UserDtoImpl({required this.uid, required this.nickName, @JsonKey(defaultValue: '') required this.token}): super._();

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) => _$$UserDtoImplFromJson(json);

@override final  String uid;
@override final  String nickName;
@override@JsonKey(defaultValue: '') final  String token;

@override
String toString() {
  return 'UserDto(uid: $uid, nickName: $nickName, token: $token)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UserDtoImpl&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(ignore: true)
@override
int get hashCode => Object.hash(runtimeType,uid,nickName,token);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith => __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$UserDtoImplToJson(this, );
}
}


abstract class _UserDto extends UserDto {
  const factory _UserDto({required final  String uid, required final  String nickName, @JsonKey(defaultValue: '') required final  String token}) = _$UserDtoImpl;
  const _UserDto._(): super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

@override  String get uid;@override  String get nickName;@override @JsonKey(defaultValue: '') String get token;
@override @JsonKey(ignore: true)
_$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
