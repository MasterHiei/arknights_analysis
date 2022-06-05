// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_body_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenBodyDto _$TokenBodyDtoFromJson(Map<String, dynamic> json) {
  return _TokenBodyDto.fromJson(json);
}

/// @nodoc
mixin _$TokenBodyDto {
  int get appId => throw _privateConstructorUsedError;
  int get channelMasterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenBodyDtoCopyWith<TokenBodyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenBodyDtoCopyWith<$Res> {
  factory $TokenBodyDtoCopyWith(
          TokenBodyDto value, $Res Function(TokenBodyDto) then) =
      _$TokenBodyDtoCopyWithImpl<$Res>;
  $Res call(
      {int appId,
      int channelMasterId,
      @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
          String token});
}

/// @nodoc
class _$TokenBodyDtoCopyWithImpl<$Res> implements $TokenBodyDtoCopyWith<$Res> {
  _$TokenBodyDtoCopyWithImpl(this._value, this._then);

  final TokenBodyDto _value;
  // ignore: unused_field
  final $Res Function(TokenBodyDto) _then;

  @override
  $Res call({
    Object? appId = freezed,
    Object? channelMasterId = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      appId: appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as int,
      channelMasterId: channelMasterId == freezed
          ? _value.channelMasterId
          : channelMasterId // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TokenBodyDtoCopyWith<$Res>
    implements $TokenBodyDtoCopyWith<$Res> {
  factory _$$_TokenBodyDtoCopyWith(
          _$_TokenBodyDto value, $Res Function(_$_TokenBodyDto) then) =
      __$$_TokenBodyDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int appId,
      int channelMasterId,
      @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
          String token});
}

/// @nodoc
class __$$_TokenBodyDtoCopyWithImpl<$Res>
    extends _$TokenBodyDtoCopyWithImpl<$Res>
    implements _$$_TokenBodyDtoCopyWith<$Res> {
  __$$_TokenBodyDtoCopyWithImpl(
      _$_TokenBodyDto _value, $Res Function(_$_TokenBodyDto) _then)
      : super(_value, (v) => _then(v as _$_TokenBodyDto));

  @override
  _$_TokenBodyDto get _value => super._value as _$_TokenBodyDto;

  @override
  $Res call({
    Object? appId = freezed,
    Object? channelMasterId = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_TokenBodyDto(
      appId: appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as int,
      channelMasterId: channelMasterId == freezed
          ? _value.channelMasterId
          : channelMasterId // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenBodyDto implements _TokenBodyDto {
  const _$_TokenBodyDto(
      {this.appId = 1,
      this.channelMasterId = 1,
      @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
          required this.token});

  factory _$_TokenBodyDto.fromJson(Map<String, dynamic> json) =>
      _$$_TokenBodyDtoFromJson(json);

  @override
  @JsonKey()
  final int appId;
  @override
  @JsonKey()
  final int channelMasterId;
  @override
  @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
  final String token;

  @override
  String toString() {
    return 'TokenBodyDto(appId: $appId, channelMasterId: $channelMasterId, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenBodyDto &&
            const DeepCollectionEquality().equals(other.appId, appId) &&
            const DeepCollectionEquality()
                .equals(other.channelMasterId, channelMasterId) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appId),
      const DeepCollectionEquality().hash(channelMasterId),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_TokenBodyDtoCopyWith<_$_TokenBodyDto> get copyWith =>
      __$$_TokenBodyDtoCopyWithImpl<_$_TokenBodyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenBodyDtoToJson(this);
  }
}

abstract class _TokenBodyDto implements TokenBodyDto {
  const factory _TokenBodyDto(
      {final int appId,
      final int channelMasterId,
      @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
          required final String token}) = _$_TokenBodyDto;

  factory _TokenBodyDto.fromJson(Map<String, dynamic> json) =
      _$_TokenBodyDto.fromJson;

  @override
  int get appId => throw _privateConstructorUsedError;
  @override
  int get channelMasterId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TokenBodyDtoCopyWith<_$_TokenBodyDto> get copyWith =>
      throw _privateConstructorUsedError;
}
