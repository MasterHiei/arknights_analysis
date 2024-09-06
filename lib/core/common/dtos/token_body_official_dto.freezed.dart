// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_body_official_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenBodyOfficialDto _$TokenBodyOfficialDtoFromJson(Map<String, dynamic> json) {
return _TokenBodyOfficialDto.fromJson(json);
}

/// @nodoc
mixin _$TokenBodyOfficialDto {

 int get appId => throw _privateConstructorUsedError; int get channelMasterId => throw _privateConstructorUsedError;@JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) String get token => throw _privateConstructorUsedError;






/// Serializes this TokenBodyOfficialDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of TokenBodyOfficialDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$TokenBodyOfficialDtoCopyWith<TokenBodyOfficialDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $TokenBodyOfficialDtoCopyWith<$Res>  {
  factory $TokenBodyOfficialDtoCopyWith(TokenBodyOfficialDto value, $Res Function(TokenBodyOfficialDto) then) = _$TokenBodyOfficialDtoCopyWithImpl<$Res, TokenBodyOfficialDto>;
@useResult
$Res call({
 int appId, int channelMasterId,@JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) String token
});



}

/// @nodoc
class _$TokenBodyOfficialDtoCopyWithImpl<$Res,$Val extends TokenBodyOfficialDto> implements $TokenBodyOfficialDtoCopyWith<$Res> {
  _$TokenBodyOfficialDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of TokenBodyOfficialDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appId = null,Object? channelMasterId = null,Object? token = null,}) {
  return _then(_value.copyWith(
appId: null == appId ? _value.appId : appId // ignore: cast_nullable_to_non_nullable
as int,channelMasterId: null == channelMasterId ? _value.channelMasterId : channelMasterId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _value.token : token // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$TokenBodyOfficialDtoImplCopyWith<$Res> implements $TokenBodyOfficialDtoCopyWith<$Res> {
  factory _$$TokenBodyOfficialDtoImplCopyWith(_$TokenBodyOfficialDtoImpl value, $Res Function(_$TokenBodyOfficialDtoImpl) then) = __$$TokenBodyOfficialDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int appId, int channelMasterId,@JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) String token
});



}

/// @nodoc
class __$$TokenBodyOfficialDtoImplCopyWithImpl<$Res> extends _$TokenBodyOfficialDtoCopyWithImpl<$Res, _$TokenBodyOfficialDtoImpl> implements _$$TokenBodyOfficialDtoImplCopyWith<$Res> {
  __$$TokenBodyOfficialDtoImplCopyWithImpl(_$TokenBodyOfficialDtoImpl _value, $Res Function(_$TokenBodyOfficialDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of TokenBodyOfficialDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appId = null,Object? channelMasterId = null,Object? token = null,}) {
  return _then(_$TokenBodyOfficialDtoImpl(
appId: null == appId ? _value.appId : appId // ignore: cast_nullable_to_non_nullable
as int,channelMasterId: null == channelMasterId ? _value.channelMasterId : channelMasterId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _value.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$TokenBodyOfficialDtoImpl  implements _TokenBodyOfficialDto {
  const _$TokenBodyOfficialDtoImpl({this.appId = 1, this.channelMasterId = 1, @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) required this.token});

  factory _$TokenBodyOfficialDtoImpl.fromJson(Map<String, dynamic> json) => _$$TokenBodyOfficialDtoImplFromJson(json);

@override@JsonKey() final  int appId;
@override@JsonKey() final  int channelMasterId;
@override@JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) final  String token;

@override
String toString() {
  return 'TokenBodyOfficialDto(appId: $appId, channelMasterId: $channelMasterId, token: $token)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$TokenBodyOfficialDtoImpl&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.channelMasterId, channelMasterId) || other.channelMasterId == channelMasterId)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appId,channelMasterId,token);

/// Create a copy of TokenBodyOfficialDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$TokenBodyOfficialDtoImplCopyWith<_$TokenBodyOfficialDtoImpl> get copyWith => __$$TokenBodyOfficialDtoImplCopyWithImpl<_$TokenBodyOfficialDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$TokenBodyOfficialDtoImplToJson(this, );
}
}


abstract class _TokenBodyOfficialDto implements TokenBodyOfficialDto {
  const factory _TokenBodyOfficialDto({final  int appId, final  int channelMasterId, @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) required final  String token}) = _$TokenBodyOfficialDtoImpl;
  

  factory _TokenBodyOfficialDto.fromJson(Map<String, dynamic> json) = _$TokenBodyOfficialDtoImpl.fromJson;

@override int get appId;@override int get channelMasterId;@override@JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) String get token;
/// Create a copy of TokenBodyOfficialDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$TokenBodyOfficialDtoImplCopyWith<_$TokenBodyOfficialDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
