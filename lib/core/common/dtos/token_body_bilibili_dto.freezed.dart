// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_body_bilibili_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenBodyBilibiliDto _$TokenBodyBilibiliDtoFromJson(Map<String, dynamic> json) {
return _TokenBodyBilibiliDto.fromJson(json);
}

/// @nodoc
mixin _$TokenBodyBilibiliDto {

 String get token => throw _privateConstructorUsedError;






Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
@JsonKey(ignore: true)
$TokenBodyBilibiliDtoCopyWith<TokenBodyBilibiliDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $TokenBodyBilibiliDtoCopyWith<$Res>  {
  factory $TokenBodyBilibiliDtoCopyWith(TokenBodyBilibiliDto value, $Res Function(TokenBodyBilibiliDto) then) = _$TokenBodyBilibiliDtoCopyWithImpl<$Res, TokenBodyBilibiliDto>;
@useResult
$Res call({
 String token
});



}

/// @nodoc
class _$TokenBodyBilibiliDtoCopyWithImpl<$Res,$Val extends TokenBodyBilibiliDto> implements $TokenBodyBilibiliDtoCopyWith<$Res> {
  _$TokenBodyBilibiliDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_value.copyWith(
token: null == token ? _value.token : token // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$TokenBodyBilibiliDtoImplCopyWith<$Res> implements $TokenBodyBilibiliDtoCopyWith<$Res> {
  factory _$$TokenBodyBilibiliDtoImplCopyWith(_$TokenBodyBilibiliDtoImpl value, $Res Function(_$TokenBodyBilibiliDtoImpl) then) = __$$TokenBodyBilibiliDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String token
});



}

/// @nodoc
class __$$TokenBodyBilibiliDtoImplCopyWithImpl<$Res> extends _$TokenBodyBilibiliDtoCopyWithImpl<$Res, _$TokenBodyBilibiliDtoImpl> implements _$$TokenBodyBilibiliDtoImplCopyWith<$Res> {
  __$$TokenBodyBilibiliDtoImplCopyWithImpl(_$TokenBodyBilibiliDtoImpl _value, $Res Function(_$TokenBodyBilibiliDtoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_$TokenBodyBilibiliDtoImpl(
token: null == token ? _value.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$TokenBodyBilibiliDtoImpl  implements _TokenBodyBilibiliDto {
  const _$TokenBodyBilibiliDtoImpl({required this.token});

  factory _$TokenBodyBilibiliDtoImpl.fromJson(Map<String, dynamic> json) => _$$TokenBodyBilibiliDtoImplFromJson(json);

@override final  String token;

@override
String toString() {
  return 'TokenBodyBilibiliDto(token: $token)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$TokenBodyBilibiliDtoImpl&&(identical(other.token, token) || other.token == token));
}

@JsonKey(ignore: true)
@override
int get hashCode => Object.hash(runtimeType,token);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$TokenBodyBilibiliDtoImplCopyWith<_$TokenBodyBilibiliDtoImpl> get copyWith => __$$TokenBodyBilibiliDtoImplCopyWithImpl<_$TokenBodyBilibiliDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$TokenBodyBilibiliDtoImplToJson(this, );
}
}


abstract class _TokenBodyBilibiliDto implements TokenBodyBilibiliDto {
  const factory _TokenBodyBilibiliDto({required final  String token}) = _$TokenBodyBilibiliDtoImpl;
  

  factory _TokenBodyBilibiliDto.fromJson(Map<String, dynamic> json) = _$TokenBodyBilibiliDtoImpl.fromJson;

@override  String get token;
@override @JsonKey(ignore: true)
_$$TokenBodyBilibiliDtoImplCopyWith<_$TokenBodyBilibiliDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
