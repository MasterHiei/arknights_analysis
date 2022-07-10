// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GachaResponseDto _$GachaResponseDtoFromJson(Map<String, dynamic> json) {
  return _GachaResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GachaResponseDto {
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get msg => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dataFromJson)
  GachaDto? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GachaResponseDtoCopyWith<GachaResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaResponseDtoCopyWith<$Res> {
  factory $GachaResponseDtoCopyWith(
          GachaResponseDto value, $Res Function(GachaResponseDto) then) =
      _$GachaResponseDtoCopyWithImpl<$Res>;
  $Res call(
      {int? code,
      @JsonKey(defaultValue: '') String msg,
      @JsonKey(fromJson: _dataFromJson) GachaDto? data});

  $GachaDtoCopyWith<$Res>? get data;
}

/// @nodoc
class _$GachaResponseDtoCopyWithImpl<$Res>
    implements $GachaResponseDtoCopyWith<$Res> {
  _$GachaResponseDtoCopyWithImpl(this._value, this._then);

  final GachaResponseDto _value;
  // ignore: unused_field
  final $Res Function(GachaResponseDto) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GachaDto?,
    ));
  }

  @override
  $GachaDtoCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GachaDtoCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_GachaResponseDtoCopyWith<$Res>
    implements $GachaResponseDtoCopyWith<$Res> {
  factory _$$_GachaResponseDtoCopyWith(
          _$_GachaResponseDto value, $Res Function(_$_GachaResponseDto) then) =
      __$$_GachaResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? code,
      @JsonKey(defaultValue: '') String msg,
      @JsonKey(fromJson: _dataFromJson) GachaDto? data});

  @override
  $GachaDtoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_GachaResponseDtoCopyWithImpl<$Res>
    extends _$GachaResponseDtoCopyWithImpl<$Res>
    implements _$$_GachaResponseDtoCopyWith<$Res> {
  __$$_GachaResponseDtoCopyWithImpl(
      _$_GachaResponseDto _value, $Res Function(_$_GachaResponseDto) _then)
      : super(_value, (v) => _then(v as _$_GachaResponseDto));

  @override
  _$_GachaResponseDto get _value => super._value as _$_GachaResponseDto;

  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_GachaResponseDto(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GachaDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GachaResponseDto implements _GachaResponseDto {
  const _$_GachaResponseDto(
      {this.code,
      @JsonKey(defaultValue: '') required this.msg,
      @JsonKey(fromJson: _dataFromJson) this.data});

  factory _$_GachaResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_GachaResponseDtoFromJson(json);

  @override
  final int? code;
  @override
  @JsonKey(defaultValue: '')
  final String msg;
  @override
  @JsonKey(fromJson: _dataFromJson)
  final GachaDto? data;

  @override
  String toString() {
    return 'GachaResponseDto(code: $code, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaResponseDto &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GachaResponseDtoCopyWith<_$_GachaResponseDto> get copyWith =>
      __$$_GachaResponseDtoCopyWithImpl<_$_GachaResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GachaResponseDtoToJson(this);
  }
}

abstract class _GachaResponseDto implements GachaResponseDto {
  const factory _GachaResponseDto(
          {final int? code,
          @JsonKey(defaultValue: '') required final String msg,
          @JsonKey(fromJson: _dataFromJson) final GachaDto? data}) =
      _$_GachaResponseDto;

  factory _GachaResponseDto.fromJson(Map<String, dynamic> json) =
      _$_GachaResponseDto.fromJson;

  @override
  int? get code;
  @override
  @JsonKey(defaultValue: '')
  String get msg;
  @override
  @JsonKey(fromJson: _dataFromJson)
  GachaDto? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GachaResponseDtoCopyWith<_$_GachaResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
