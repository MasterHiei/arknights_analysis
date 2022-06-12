// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_table_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GachaTableDto _$GachaTableDtoFromJson(Map<String, dynamic> json) {
  return _GachaTableDto.fromJson(json);
}

/// @nodoc
mixin _$GachaTableDto {
  List<GachaPoolDto> get gachaPoolClient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GachaTableDtoCopyWith<GachaTableDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaTableDtoCopyWith<$Res> {
  factory $GachaTableDtoCopyWith(
          GachaTableDto value, $Res Function(GachaTableDto) then) =
      _$GachaTableDtoCopyWithImpl<$Res>;
  $Res call({List<GachaPoolDto> gachaPoolClient});
}

/// @nodoc
class _$GachaTableDtoCopyWithImpl<$Res>
    implements $GachaTableDtoCopyWith<$Res> {
  _$GachaTableDtoCopyWithImpl(this._value, this._then);

  final GachaTableDto _value;
  // ignore: unused_field
  final $Res Function(GachaTableDto) _then;

  @override
  $Res call({
    Object? gachaPoolClient = freezed,
  }) {
    return _then(_value.copyWith(
      gachaPoolClient: gachaPoolClient == freezed
          ? _value.gachaPoolClient
          : gachaPoolClient // ignore: cast_nullable_to_non_nullable
              as List<GachaPoolDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_GachaTableDtoCopyWith<$Res>
    implements $GachaTableDtoCopyWith<$Res> {
  factory _$$_GachaTableDtoCopyWith(
          _$_GachaTableDto value, $Res Function(_$_GachaTableDto) then) =
      __$$_GachaTableDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<GachaPoolDto> gachaPoolClient});
}

/// @nodoc
class __$$_GachaTableDtoCopyWithImpl<$Res>
    extends _$GachaTableDtoCopyWithImpl<$Res>
    implements _$$_GachaTableDtoCopyWith<$Res> {
  __$$_GachaTableDtoCopyWithImpl(
      _$_GachaTableDto _value, $Res Function(_$_GachaTableDto) _then)
      : super(_value, (v) => _then(v as _$_GachaTableDto));

  @override
  _$_GachaTableDto get _value => super._value as _$_GachaTableDto;

  @override
  $Res call({
    Object? gachaPoolClient = freezed,
  }) {
    return _then(_$_GachaTableDto(
      gachaPoolClient: gachaPoolClient == freezed
          ? _value._gachaPoolClient
          : gachaPoolClient // ignore: cast_nullable_to_non_nullable
              as List<GachaPoolDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GachaTableDto implements _GachaTableDto {
  const _$_GachaTableDto({required final List<GachaPoolDto> gachaPoolClient})
      : _gachaPoolClient = gachaPoolClient;

  factory _$_GachaTableDto.fromJson(Map<String, dynamic> json) =>
      _$$_GachaTableDtoFromJson(json);

  final List<GachaPoolDto> _gachaPoolClient;
  @override
  List<GachaPoolDto> get gachaPoolClient {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gachaPoolClient);
  }

  @override
  String toString() {
    return 'GachaTableDto(gachaPoolClient: $gachaPoolClient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaTableDto &&
            const DeepCollectionEquality()
                .equals(other._gachaPoolClient, _gachaPoolClient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_gachaPoolClient));

  @JsonKey(ignore: true)
  @override
  _$$_GachaTableDtoCopyWith<_$_GachaTableDto> get copyWith =>
      __$$_GachaTableDtoCopyWithImpl<_$_GachaTableDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GachaTableDtoToJson(this);
  }
}

abstract class _GachaTableDto implements GachaTableDto {
  const factory _GachaTableDto(
      {required final List<GachaPoolDto> gachaPoolClient}) = _$_GachaTableDto;

  factory _GachaTableDto.fromJson(Map<String, dynamic> json) =
      _$_GachaTableDto.fromJson;

  @override
  List<GachaPoolDto> get gachaPoolClient => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GachaTableDtoCopyWith<_$_GachaTableDto> get copyWith =>
      throw _privateConstructorUsedError;
}
