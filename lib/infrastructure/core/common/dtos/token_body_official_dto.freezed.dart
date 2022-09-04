// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_body_official_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenBodyOfficialDto _$TokenBodyOfficialDtoFromJson(Map<String, dynamic> json) {
  return _TokenBodyOfficialDto.fromJson(json);
}

/// @nodoc
mixin _$TokenBodyOfficialDto {
  int get appId => throw _privateConstructorUsedError;
  int get channelMasterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenBodyOfficialDtoCopyWith<TokenBodyOfficialDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenBodyOfficialDtoCopyWith<$Res> {
  factory $TokenBodyOfficialDtoCopyWith(TokenBodyOfficialDto value,
          $Res Function(TokenBodyOfficialDto) then) =
      _$TokenBodyOfficialDtoCopyWithImpl<$Res>;
  $Res call(
      {int appId,
      int channelMasterId,
      @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
          String token});
}

/// @nodoc
class _$TokenBodyOfficialDtoCopyWithImpl<$Res>
    implements $TokenBodyOfficialDtoCopyWith<$Res> {
  _$TokenBodyOfficialDtoCopyWithImpl(this._value, this._then);

  final TokenBodyOfficialDto _value;
  // ignore: unused_field
  final $Res Function(TokenBodyOfficialDto) _then;

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
abstract class _$$_TokenBodyOfficialDtoCopyWith<$Res>
    implements $TokenBodyOfficialDtoCopyWith<$Res> {
  factory _$$_TokenBodyOfficialDtoCopyWith(_$_TokenBodyOfficialDto value,
          $Res Function(_$_TokenBodyOfficialDto) then) =
      __$$_TokenBodyOfficialDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int appId,
      int channelMasterId,
      @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
          String token});
}

/// @nodoc
class __$$_TokenBodyOfficialDtoCopyWithImpl<$Res>
    extends _$TokenBodyOfficialDtoCopyWithImpl<$Res>
    implements _$$_TokenBodyOfficialDtoCopyWith<$Res> {
  __$$_TokenBodyOfficialDtoCopyWithImpl(_$_TokenBodyOfficialDto _value,
      $Res Function(_$_TokenBodyOfficialDto) _then)
      : super(_value, (v) => _then(v as _$_TokenBodyOfficialDto));

  @override
  _$_TokenBodyOfficialDto get _value => super._value as _$_TokenBodyOfficialDto;

  @override
  $Res call({
    Object? appId = freezed,
    Object? channelMasterId = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_TokenBodyOfficialDto(
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
class _$_TokenBodyOfficialDto implements _TokenBodyOfficialDto {
  const _$_TokenBodyOfficialDto(
      {this.appId = 1,
      this.channelMasterId = 1,
      @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
          required this.token});

  factory _$_TokenBodyOfficialDto.fromJson(Map<String, dynamic> json) =>
      _$$_TokenBodyOfficialDtoFromJson(json);

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
    return 'TokenBodyOfficialDto(appId: $appId, channelMasterId: $channelMasterId, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenBodyOfficialDto &&
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
  _$$_TokenBodyOfficialDtoCopyWith<_$_TokenBodyOfficialDto> get copyWith =>
      __$$_TokenBodyOfficialDtoCopyWithImpl<_$_TokenBodyOfficialDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenBodyOfficialDtoToJson(
      this,
    );
  }
}

abstract class _TokenBodyOfficialDto implements TokenBodyOfficialDto {
  const factory _TokenBodyOfficialDto(
      {final int appId,
      final int channelMasterId,
      @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
          required final String token}) = _$_TokenBodyOfficialDto;

  factory _TokenBodyOfficialDto.fromJson(Map<String, dynamic> json) =
      _$_TokenBodyOfficialDto.fromJson;

  @override
  int get appId;
  @override
  int get channelMasterId;
  @override
  @JsonKey(name: 'channelToken', fromJson: _tokenFromJson, toJson: _tokenToJson)
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_TokenBodyOfficialDtoCopyWith<_$_TokenBodyOfficialDto> get copyWith =>
      throw _privateConstructorUsedError;
}
