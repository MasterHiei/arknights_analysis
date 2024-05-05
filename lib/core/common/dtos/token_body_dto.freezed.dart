// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_body_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenBodyDto _$TokenBodyDtoFromJson(Map<String, dynamic> json) {
return _TokenBodyDto.fromJson(json);
}

/// @nodoc
mixin _$TokenBodyDto {

@JsonKey(includeIfNull: false) int? get appId => throw _privateConstructorUsedError;@JsonKey(includeIfNull: false) int? get channelMasterId => throw _privateConstructorUsedError;@JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) String get token => throw _privateConstructorUsedError;






Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
@JsonKey(ignore: true)
$TokenBodyDtoCopyWith<TokenBodyDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $TokenBodyDtoCopyWith<$Res>  {
  factory $TokenBodyDtoCopyWith(TokenBodyDto value, $Res Function(TokenBodyDto) then) = _$TokenBodyDtoCopyWithImpl<$Res, TokenBodyDto>;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? appId,@JsonKey(includeIfNull: false) int? channelMasterId,@JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) String token
});



}

/// @nodoc
class _$TokenBodyDtoCopyWithImpl<$Res,$Val extends TokenBodyDto> implements $TokenBodyDtoCopyWith<$Res> {
  _$TokenBodyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? appId = freezed,Object? channelMasterId = freezed,Object? token = null,}) {
  return _then(_value.copyWith(
appId: freezed == appId ? _value.appId : appId // ignore: cast_nullable_to_non_nullable
as int?,channelMasterId: freezed == channelMasterId ? _value.channelMasterId : channelMasterId // ignore: cast_nullable_to_non_nullable
as int?,token: null == token ? _value.token : token // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$TokenBodyDtoImplCopyWith<$Res> implements $TokenBodyDtoCopyWith<$Res> {
  factory _$$TokenBodyDtoImplCopyWith(_$TokenBodyDtoImpl value, $Res Function(_$TokenBodyDtoImpl) then) = __$$TokenBodyDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? appId,@JsonKey(includeIfNull: false) int? channelMasterId,@JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) String token
});



}

/// @nodoc
class __$$TokenBodyDtoImplCopyWithImpl<$Res> extends _$TokenBodyDtoCopyWithImpl<$Res, _$TokenBodyDtoImpl> implements _$$TokenBodyDtoImplCopyWith<$Res> {
  __$$TokenBodyDtoImplCopyWithImpl(_$TokenBodyDtoImpl _value, $Res Function(_$TokenBodyDtoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? appId = freezed,Object? channelMasterId = freezed,Object? token = null,}) {
  return _then(_$TokenBodyDtoImpl(
appId: freezed == appId ? _value.appId : appId // ignore: cast_nullable_to_non_nullable
as int?,channelMasterId: freezed == channelMasterId ? _value.channelMasterId : channelMasterId // ignore: cast_nullable_to_non_nullable
as int?,token: null == token ? _value.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$TokenBodyDtoImpl  implements _TokenBodyDto {
  const _$TokenBodyDtoImpl({@JsonKey(includeIfNull: false) this.appId, @JsonKey(includeIfNull: false) this.channelMasterId, @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) required this.token});

  factory _$TokenBodyDtoImpl.fromJson(Map<String, dynamic> json) => _$$TokenBodyDtoImplFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? appId;
@override@JsonKey(includeIfNull: false) final  int? channelMasterId;
@override@JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) final  String token;

@override
String toString() {
  return 'TokenBodyDto(appId: $appId, channelMasterId: $channelMasterId, token: $token)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$TokenBodyDtoImpl&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.channelMasterId, channelMasterId) || other.channelMasterId == channelMasterId)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(ignore: true)
@override
int get hashCode => Object.hash(runtimeType,appId,channelMasterId,token);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$TokenBodyDtoImplCopyWith<_$TokenBodyDtoImpl> get copyWith => __$$TokenBodyDtoImplCopyWithImpl<_$TokenBodyDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$TokenBodyDtoImplToJson(this, );
}
}


abstract class _TokenBodyDto implements TokenBodyDto {
  const factory _TokenBodyDto({@JsonKey(includeIfNull: false) final  int? appId, @JsonKey(includeIfNull: false) final  int? channelMasterId, @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) required final  String token}) = _$TokenBodyDtoImpl;
  

  factory _TokenBodyDto.fromJson(Map<String, dynamic> json) = _$TokenBodyDtoImpl.fromJson;

@override @JsonKey(includeIfNull: false) int? get appId;@override @JsonKey(includeIfNull: false) int? get channelMasterId;@override @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson) String get token;
@override @JsonKey(ignore: true)
_$$TokenBodyDtoImplCopyWith<_$TokenBodyDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
