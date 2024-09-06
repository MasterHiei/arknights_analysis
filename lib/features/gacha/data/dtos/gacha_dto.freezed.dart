// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GachaDto _$GachaDtoFromJson(Map<String, dynamic> json) {
return _GachaDto.fromJson(json);
}

/// @nodoc
mixin _$GachaDto {

@JsonKey(name: 'list') List<GachaRecordDto> get records => throw _privateConstructorUsedError; PaginationDto get pagination => throw _privateConstructorUsedError;






/// Serializes this GachaDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of GachaDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$GachaDtoCopyWith<GachaDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaDtoCopyWith<$Res>  {
  factory $GachaDtoCopyWith(GachaDto value, $Res Function(GachaDto) then) = _$GachaDtoCopyWithImpl<$Res, GachaDto>;
@useResult
$Res call({
@JsonKey(name: 'list') List<GachaRecordDto> records, PaginationDto pagination
});


$PaginationDtoCopyWith<$Res> get pagination;
}

/// @nodoc
class _$GachaDtoCopyWithImpl<$Res,$Val extends GachaDto> implements $GachaDtoCopyWith<$Res> {
  _$GachaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of GachaDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_value.copyWith(
records: null == records ? _value.records : records // ignore: cast_nullable_to_non_nullable
as List<GachaRecordDto>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationDto,
  )as $Val);
}
/// Create a copy of GachaDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDtoCopyWith<$Res> get pagination {
  
  return $PaginationDtoCopyWith<$Res>(_value.pagination, (value) {
    return _then(_value.copyWith(pagination: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$GachaDtoImplCopyWith<$Res> implements $GachaDtoCopyWith<$Res> {
  factory _$$GachaDtoImplCopyWith(_$GachaDtoImpl value, $Res Function(_$GachaDtoImpl) then) = __$$GachaDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@JsonKey(name: 'list') List<GachaRecordDto> records, PaginationDto pagination
});


@override $PaginationDtoCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$GachaDtoImplCopyWithImpl<$Res> extends _$GachaDtoCopyWithImpl<$Res, _$GachaDtoImpl> implements _$$GachaDtoImplCopyWith<$Res> {
  __$$GachaDtoImplCopyWithImpl(_$GachaDtoImpl _value, $Res Function(_$GachaDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of GachaDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_$GachaDtoImpl(
records: null == records ? _value._records : records // ignore: cast_nullable_to_non_nullable
as List<GachaRecordDto>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationDto,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$GachaDtoImpl extends _GachaDto  {
  const _$GachaDtoImpl({@JsonKey(name: 'list') required final  List<GachaRecordDto> records, required this.pagination}): _records = records,super._();

  factory _$GachaDtoImpl.fromJson(Map<String, dynamic> json) => _$$GachaDtoImplFromJson(json);

 final  List<GachaRecordDto> _records;
@override@JsonKey(name: 'list') List<GachaRecordDto> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  PaginationDto pagination;

@override
String toString() {
  return 'GachaDto(records: $records, pagination: $pagination)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaDtoImpl&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),pagination);

/// Create a copy of GachaDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GachaDtoImplCopyWith<_$GachaDtoImpl> get copyWith => __$$GachaDtoImplCopyWithImpl<_$GachaDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$GachaDtoImplToJson(this, );
}
}


abstract class _GachaDto extends GachaDto {
  const factory _GachaDto({@JsonKey(name: 'list') required final  List<GachaRecordDto> records, required final  PaginationDto pagination}) = _$GachaDtoImpl;
  const _GachaDto._(): super._();

  factory _GachaDto.fromJson(Map<String, dynamic> json) = _$GachaDtoImpl.fromJson;

@override@JsonKey(name: 'list') List<GachaRecordDto> get records;@override PaginationDto get pagination;
/// Create a copy of GachaDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$GachaDtoImplCopyWith<_$GachaDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
