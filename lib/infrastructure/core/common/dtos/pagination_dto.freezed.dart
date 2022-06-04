// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationDto _$PaginationDtoFromJson(Map<String, dynamic> json) {
  return _PaginationDto.fromJson(json);
}

/// @nodoc
mixin _$PaginationDto {
  int get current => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationDtoCopyWith<PaginationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDtoCopyWith<$Res> {
  factory $PaginationDtoCopyWith(
          PaginationDto value, $Res Function(PaginationDto) then) =
      _$PaginationDtoCopyWithImpl<$Res>;
  $Res call({int current, int total});
}

/// @nodoc
class _$PaginationDtoCopyWithImpl<$Res>
    implements $PaginationDtoCopyWith<$Res> {
  _$PaginationDtoCopyWithImpl(this._value, this._then);

  final PaginationDto _value;
  // ignore: unused_field
  final $Res Function(PaginationDto) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PaginationDtoCopyWith<$Res>
    implements $PaginationDtoCopyWith<$Res> {
  factory _$$_PaginationDtoCopyWith(
          _$_PaginationDto value, $Res Function(_$_PaginationDto) then) =
      __$$_PaginationDtoCopyWithImpl<$Res>;
  @override
  $Res call({int current, int total});
}

/// @nodoc
class __$$_PaginationDtoCopyWithImpl<$Res>
    extends _$PaginationDtoCopyWithImpl<$Res>
    implements _$$_PaginationDtoCopyWith<$Res> {
  __$$_PaginationDtoCopyWithImpl(
      _$_PaginationDto _value, $Res Function(_$_PaginationDto) _then)
      : super(_value, (v) => _then(v as _$_PaginationDto));

  @override
  _$_PaginationDto get _value => super._value as _$_PaginationDto;

  @override
  $Res call({
    Object? current = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_PaginationDto(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationDto extends _PaginationDto {
  const _$_PaginationDto({required this.current, required this.total})
      : super._();

  factory _$_PaginationDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationDtoFromJson(json);

  @override
  final int current;
  @override
  final int total;

  @override
  String toString() {
    return 'PaginationDto(current: $current, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationDto &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_PaginationDtoCopyWith<_$_PaginationDto> get copyWith =>
      __$$_PaginationDtoCopyWithImpl<_$_PaginationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationDtoToJson(this);
  }
}

abstract class _PaginationDto extends PaginationDto {
  const factory _PaginationDto(
      {required final int current,
      required final int total}) = _$_PaginationDto;
  const _PaginationDto._() : super._();

  factory _PaginationDto.fromJson(Map<String, dynamic> json) =
      _$_PaginationDto.fromJson;

  @override
  int get current => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationDtoCopyWith<_$_PaginationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
