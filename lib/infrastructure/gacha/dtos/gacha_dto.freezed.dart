// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GachaDto _$GachaDtoFromJson(Map<String, dynamic> json) {
  return _GachaDto.fromJson(json);
}

/// @nodoc
mixin _$GachaDto {
  List<GachaRecordDto> get list => throw _privateConstructorUsedError;
  PaginationDto get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GachaDtoCopyWith<GachaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaDtoCopyWith<$Res> {
  factory $GachaDtoCopyWith(GachaDto value, $Res Function(GachaDto) then) =
      _$GachaDtoCopyWithImpl<$Res>;
  $Res call({List<GachaRecordDto> list, PaginationDto pagination});

  $PaginationDtoCopyWith<$Res> get pagination;
}

/// @nodoc
class _$GachaDtoCopyWithImpl<$Res> implements $GachaDtoCopyWith<$Res> {
  _$GachaDtoCopyWithImpl(this._value, this._then);

  final GachaDto _value;
  // ignore: unused_field
  final $Res Function(GachaDto) _then;

  @override
  $Res call({
    Object? list = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GachaRecordDto>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDto,
    ));
  }

  @override
  $PaginationDtoCopyWith<$Res> get pagination {
    return $PaginationDtoCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }
}

/// @nodoc
abstract class _$$_GachaDtoCopyWith<$Res> implements $GachaDtoCopyWith<$Res> {
  factory _$$_GachaDtoCopyWith(
          _$_GachaDto value, $Res Function(_$_GachaDto) then) =
      __$$_GachaDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<GachaRecordDto> list, PaginationDto pagination});

  @override
  $PaginationDtoCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_GachaDtoCopyWithImpl<$Res> extends _$GachaDtoCopyWithImpl<$Res>
    implements _$$_GachaDtoCopyWith<$Res> {
  __$$_GachaDtoCopyWithImpl(
      _$_GachaDto _value, $Res Function(_$_GachaDto) _then)
      : super(_value, (v) => _then(v as _$_GachaDto));

  @override
  _$_GachaDto get _value => super._value as _$_GachaDto;

  @override
  $Res call({
    Object? list = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_GachaDto(
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GachaRecordDto>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GachaDto extends _GachaDto {
  const _$_GachaDto(
      {required final List<GachaRecordDto> list, required this.pagination})
      : _list = list,
        super._();

  factory _$_GachaDto.fromJson(Map<String, dynamic> json) =>
      _$$_GachaDtoFromJson(json);

  final List<GachaRecordDto> _list;
  @override
  List<GachaRecordDto> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final PaginationDto pagination;

  @override
  String toString() {
    return 'GachaDto(list: $list, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaDto &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other.pagination, pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(pagination));

  @JsonKey(ignore: true)
  @override
  _$$_GachaDtoCopyWith<_$_GachaDto> get copyWith =>
      __$$_GachaDtoCopyWithImpl<_$_GachaDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GachaDtoToJson(this);
  }
}

abstract class _GachaDto extends GachaDto {
  const factory _GachaDto(
      {required final List<GachaRecordDto> list,
      required final PaginationDto pagination}) = _$_GachaDto;
  const _GachaDto._() : super._();

  factory _GachaDto.fromJson(Map<String, dynamic> json) = _$_GachaDto.fromJson;

  @override
  List<GachaRecordDto> get list => throw _privateConstructorUsedError;
  @override
  PaginationDto get pagination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GachaDtoCopyWith<_$_GachaDto> get copyWith =>
      throw _privateConstructorUsedError;
}
