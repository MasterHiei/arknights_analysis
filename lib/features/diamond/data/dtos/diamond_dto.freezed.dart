// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diamond_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiamondDto _$DiamondDtoFromJson(Map<String, dynamic> json) {
return _DiamondDto.fromJson(json);
}

/// @nodoc
mixin _$DiamondDto {

@JsonKey(name: 'list') List<DiamondRecordDto> get records => throw _privateConstructorUsedError; PaginationDto get pagination => throw _privateConstructorUsedError;






/// Serializes this DiamondDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of DiamondDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$DiamondDtoCopyWith<DiamondDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $DiamondDtoCopyWith<$Res>  {
  factory $DiamondDtoCopyWith(DiamondDto value, $Res Function(DiamondDto) then) = _$DiamondDtoCopyWithImpl<$Res, DiamondDto>;
@useResult
$Res call({
@JsonKey(name: 'list') List<DiamondRecordDto> records, PaginationDto pagination
});


$PaginationDtoCopyWith<$Res> get pagination;
}

/// @nodoc
class _$DiamondDtoCopyWithImpl<$Res,$Val extends DiamondDto> implements $DiamondDtoCopyWith<$Res> {
  _$DiamondDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of DiamondDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_value.copyWith(
records: null == records ? _value.records : records // ignore: cast_nullable_to_non_nullable
as List<DiamondRecordDto>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationDto,
  )as $Val);
}
/// Create a copy of DiamondDto
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
abstract class _$$DiamondDtoImplCopyWith<$Res> implements $DiamondDtoCopyWith<$Res> {
  factory _$$DiamondDtoImplCopyWith(_$DiamondDtoImpl value, $Res Function(_$DiamondDtoImpl) then) = __$$DiamondDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@JsonKey(name: 'list') List<DiamondRecordDto> records, PaginationDto pagination
});


@override $PaginationDtoCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$DiamondDtoImplCopyWithImpl<$Res> extends _$DiamondDtoCopyWithImpl<$Res, _$DiamondDtoImpl> implements _$$DiamondDtoImplCopyWith<$Res> {
  __$$DiamondDtoImplCopyWithImpl(_$DiamondDtoImpl _value, $Res Function(_$DiamondDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of DiamondDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_$DiamondDtoImpl(
records: null == records ? _value._records : records // ignore: cast_nullable_to_non_nullable
as List<DiamondRecordDto>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationDto,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$DiamondDtoImpl extends _DiamondDto  {
  const _$DiamondDtoImpl({@JsonKey(name: 'list') required final  List<DiamondRecordDto> records, required this.pagination}): _records = records,super._();

  factory _$DiamondDtoImpl.fromJson(Map<String, dynamic> json) => _$$DiamondDtoImplFromJson(json);

 final  List<DiamondRecordDto> _records;
@override@JsonKey(name: 'list') List<DiamondRecordDto> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  PaginationDto pagination;

@override
String toString() {
  return 'DiamondDto(records: $records, pagination: $pagination)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DiamondDtoImpl&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),pagination);

/// Create a copy of DiamondDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DiamondDtoImplCopyWith<_$DiamondDtoImpl> get copyWith => __$$DiamondDtoImplCopyWithImpl<_$DiamondDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$DiamondDtoImplToJson(this, );
}
}


abstract class _DiamondDto extends DiamondDto {
  const factory _DiamondDto({@JsonKey(name: 'list') required final  List<DiamondRecordDto> records, required final  PaginationDto pagination}) = _$DiamondDtoImpl;
  const _DiamondDto._(): super._();

  factory _DiamondDto.fromJson(Map<String, dynamic> json) = _$DiamondDtoImpl.fromJson;

@override@JsonKey(name: 'list') List<DiamondRecordDto> get records;@override PaginationDto get pagination;
/// Create a copy of DiamondDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DiamondDtoImplCopyWith<_$DiamondDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
