// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_body_bilibili_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenBodyBilibiliDto _$TokenBodyBilibiliDtoFromJson(Map<String, dynamic> json) {
  return _TokenBodyBilibiliDto.fromJson(json);
}

/// @nodoc
mixin _$TokenBodyBilibiliDto {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenBodyBilibiliDtoCopyWith<TokenBodyBilibiliDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenBodyBilibiliDtoCopyWith<$Res> {
  factory $TokenBodyBilibiliDtoCopyWith(TokenBodyBilibiliDto value,
          $Res Function(TokenBodyBilibiliDto) then) =
      _$TokenBodyBilibiliDtoCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$TokenBodyBilibiliDtoCopyWithImpl<$Res>
    implements $TokenBodyBilibiliDtoCopyWith<$Res> {
  _$TokenBodyBilibiliDtoCopyWithImpl(this._value, this._then);

  final TokenBodyBilibiliDto _value;
  // ignore: unused_field
  final $Res Function(TokenBodyBilibiliDto) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TokenBodyBilibiliDtoCopyWith<$Res>
    implements $TokenBodyBilibiliDtoCopyWith<$Res> {
  factory _$$_TokenBodyBilibiliDtoCopyWith(_$_TokenBodyBilibiliDto value,
          $Res Function(_$_TokenBodyBilibiliDto) then) =
      __$$_TokenBodyBilibiliDtoCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$_TokenBodyBilibiliDtoCopyWithImpl<$Res>
    extends _$TokenBodyBilibiliDtoCopyWithImpl<$Res>
    implements _$$_TokenBodyBilibiliDtoCopyWith<$Res> {
  __$$_TokenBodyBilibiliDtoCopyWithImpl(_$_TokenBodyBilibiliDto _value,
      $Res Function(_$_TokenBodyBilibiliDto) _then)
      : super(_value, (v) => _then(v as _$_TokenBodyBilibiliDto));

  @override
  _$_TokenBodyBilibiliDto get _value => super._value as _$_TokenBodyBilibiliDto;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_TokenBodyBilibiliDto(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenBodyBilibiliDto implements _TokenBodyBilibiliDto {
  const _$_TokenBodyBilibiliDto({required this.token});

  factory _$_TokenBodyBilibiliDto.fromJson(Map<String, dynamic> json) =>
      _$$_TokenBodyBilibiliDtoFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'TokenBodyBilibiliDto(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenBodyBilibiliDto &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_TokenBodyBilibiliDtoCopyWith<_$_TokenBodyBilibiliDto> get copyWith =>
      __$$_TokenBodyBilibiliDtoCopyWithImpl<_$_TokenBodyBilibiliDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenBodyBilibiliDtoToJson(
      this,
    );
  }
}

abstract class _TokenBodyBilibiliDto implements TokenBodyBilibiliDto {
  const factory _TokenBodyBilibiliDto({required final String token}) =
      _$_TokenBodyBilibiliDto;

  factory _TokenBodyBilibiliDto.fromJson(Map<String, dynamic> json) =
      _$_TokenBodyBilibiliDto.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_TokenBodyBilibiliDtoCopyWith<_$_TokenBodyBilibiliDto> get copyWith =>
      throw _privateConstructorUsedError;
}
