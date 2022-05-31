// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_record_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GachaRecordDto _$GachaRecordDtoFromJson(Map<String, dynamic> json) {
  return _GachaRecordDto.fromJson(json);
}

/// @nodoc
mixin _$GachaRecordDto {
  int get ts => throw _privateConstructorUsedError;
  String get pool => throw _privateConstructorUsedError;
  List<GachaCharDto> get chars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GachaRecordDtoCopyWith<GachaRecordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaRecordDtoCopyWith<$Res> {
  factory $GachaRecordDtoCopyWith(
          GachaRecordDto value, $Res Function(GachaRecordDto) then) =
      _$GachaRecordDtoCopyWithImpl<$Res>;
  $Res call({int ts, String pool, List<GachaCharDto> chars});
}

/// @nodoc
class _$GachaRecordDtoCopyWithImpl<$Res>
    implements $GachaRecordDtoCopyWith<$Res> {
  _$GachaRecordDtoCopyWithImpl(this._value, this._then);

  final GachaRecordDto _value;
  // ignore: unused_field
  final $Res Function(GachaRecordDto) _then;

  @override
  $Res call({
    Object? ts = freezed,
    Object? pool = freezed,
    Object? chars = freezed,
  }) {
    return _then(_value.copyWith(
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as int,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      chars: chars == freezed
          ? _value.chars
          : chars // ignore: cast_nullable_to_non_nullable
              as List<GachaCharDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_GachaRecordDtoCopyWith<$Res>
    implements $GachaRecordDtoCopyWith<$Res> {
  factory _$$_GachaRecordDtoCopyWith(
          _$_GachaRecordDto value, $Res Function(_$_GachaRecordDto) then) =
      __$$_GachaRecordDtoCopyWithImpl<$Res>;
  @override
  $Res call({int ts, String pool, List<GachaCharDto> chars});
}

/// @nodoc
class __$$_GachaRecordDtoCopyWithImpl<$Res>
    extends _$GachaRecordDtoCopyWithImpl<$Res>
    implements _$$_GachaRecordDtoCopyWith<$Res> {
  __$$_GachaRecordDtoCopyWithImpl(
      _$_GachaRecordDto _value, $Res Function(_$_GachaRecordDto) _then)
      : super(_value, (v) => _then(v as _$_GachaRecordDto));

  @override
  _$_GachaRecordDto get _value => super._value as _$_GachaRecordDto;

  @override
  $Res call({
    Object? ts = freezed,
    Object? pool = freezed,
    Object? chars = freezed,
  }) {
    return _then(_$_GachaRecordDto(
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as int,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      chars: chars == freezed
          ? _value._chars
          : chars // ignore: cast_nullable_to_non_nullable
              as List<GachaCharDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GachaRecordDto extends _GachaRecordDto {
  const _$_GachaRecordDto(
      {required this.ts,
      required this.pool,
      required final List<GachaCharDto> chars})
      : _chars = chars,
        super._();

  factory _$_GachaRecordDto.fromJson(Map<String, dynamic> json) =>
      _$$_GachaRecordDtoFromJson(json);

  @override
  final int ts;
  @override
  final String pool;
  final List<GachaCharDto> _chars;
  @override
  List<GachaCharDto> get chars {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chars);
  }

  @override
  String toString() {
    return 'GachaRecordDto(ts: $ts, pool: $pool, chars: $chars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaRecordDto &&
            const DeepCollectionEquality().equals(other.ts, ts) &&
            const DeepCollectionEquality().equals(other.pool, pool) &&
            const DeepCollectionEquality().equals(other._chars, _chars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ts),
      const DeepCollectionEquality().hash(pool),
      const DeepCollectionEquality().hash(_chars));

  @JsonKey(ignore: true)
  @override
  _$$_GachaRecordDtoCopyWith<_$_GachaRecordDto> get copyWith =>
      __$$_GachaRecordDtoCopyWithImpl<_$_GachaRecordDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GachaRecordDtoToJson(this);
  }
}

abstract class _GachaRecordDto extends GachaRecordDto {
  const factory _GachaRecordDto(
      {required final int ts,
      required final String pool,
      required final List<GachaCharDto> chars}) = _$_GachaRecordDto;
  const _GachaRecordDto._() : super._();

  factory _GachaRecordDto.fromJson(Map<String, dynamic> json) =
      _$_GachaRecordDto.fromJson;

  @override
  int get ts => throw _privateConstructorUsedError;
  @override
  String get pool => throw _privateConstructorUsedError;
  @override
  List<GachaCharDto> get chars => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GachaRecordDtoCopyWith<_$_GachaRecordDto> get copyWith =>
      throw _privateConstructorUsedError;
}
