// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) {
  return _UserResponseDto.fromJson(json);
}

/// @nodoc
mixin _$UserResponseDto {
  int? get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  UserDto? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseDtoCopyWith<UserResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseDtoCopyWith<$Res> {
  factory $UserResponseDtoCopyWith(
          UserResponseDto value, $Res Function(UserResponseDto) then) =
      _$UserResponseDtoCopyWithImpl<$Res>;
  $Res call({int? status, String msg, UserDto? data});

  $UserDtoCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserResponseDtoCopyWithImpl<$Res>
    implements $UserResponseDtoCopyWith<$Res> {
  _$UserResponseDtoCopyWithImpl(this._value, this._then);

  final UserResponseDto _value;
  // ignore: unused_field
  final $Res Function(UserResponseDto) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDto?,
    ));
  }

  @override
  $UserDtoCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserResponseDtoCopyWith<$Res>
    implements $UserResponseDtoCopyWith<$Res> {
  factory _$$_UserResponseDtoCopyWith(
          _$_UserResponseDto value, $Res Function(_$_UserResponseDto) then) =
      __$$_UserResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({int? status, String msg, UserDto? data});

  @override
  $UserDtoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_UserResponseDtoCopyWithImpl<$Res>
    extends _$UserResponseDtoCopyWithImpl<$Res>
    implements _$$_UserResponseDtoCopyWith<$Res> {
  __$$_UserResponseDtoCopyWithImpl(
      _$_UserResponseDto _value, $Res Function(_$_UserResponseDto) _then)
      : super(_value, (v) => _then(v as _$_UserResponseDto));

  @override
  _$_UserResponseDto get _value => super._value as _$_UserResponseDto;

  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UserResponseDto(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponseDto implements _UserResponseDto {
  const _$_UserResponseDto({this.status, this.msg = '', this.data});

  factory _$_UserResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseDtoFromJson(json);

  @override
  final int? status;
  @override
  @JsonKey()
  final String msg;
  @override
  final UserDto? data;

  @override
  String toString() {
    return 'UserResponseDto(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserResponseDto &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_UserResponseDtoCopyWith<_$_UserResponseDto> get copyWith =>
      __$$_UserResponseDtoCopyWithImpl<_$_UserResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseDtoToJson(this);
  }
}

abstract class _UserResponseDto implements UserResponseDto {
  const factory _UserResponseDto(
      {final int? status,
      final String msg,
      final UserDto? data}) = _$_UserResponseDto;

  factory _UserResponseDto.fromJson(Map<String, dynamic> json) =
      _$_UserResponseDto.fromJson;

  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  UserDto? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserResponseDtoCopyWith<_$_UserResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
