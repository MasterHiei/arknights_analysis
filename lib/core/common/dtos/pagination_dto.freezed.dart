// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationDto _$PaginationDtoFromJson(Map<String, dynamic> json) {
return _PaginationDto.fromJson(json);
}

/// @nodoc
mixin _$PaginationDto {

 int get current => throw _privateConstructorUsedError; int get total => throw _privateConstructorUsedError;






/// Serializes this PaginationDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of PaginationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$PaginationDtoCopyWith<PaginationDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PaginationDtoCopyWith<$Res>  {
  factory $PaginationDtoCopyWith(PaginationDto value, $Res Function(PaginationDto) then) = _$PaginationDtoCopyWithImpl<$Res, PaginationDto>;
@useResult
$Res call({
 int current, int total
});



}

/// @nodoc
class _$PaginationDtoCopyWithImpl<$Res,$Val extends PaginationDto> implements $PaginationDtoCopyWith<$Res> {
  _$PaginationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of PaginationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? total = null,}) {
  return _then(_value.copyWith(
current: null == current ? _value.current : current // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _value.total : total // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PaginationDtoImplCopyWith<$Res> implements $PaginationDtoCopyWith<$Res> {
  factory _$$PaginationDtoImplCopyWith(_$PaginationDtoImpl value, $Res Function(_$PaginationDtoImpl) then) = __$$PaginationDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int current, int total
});



}

/// @nodoc
class __$$PaginationDtoImplCopyWithImpl<$Res> extends _$PaginationDtoCopyWithImpl<$Res, _$PaginationDtoImpl> implements _$$PaginationDtoImplCopyWith<$Res> {
  __$$PaginationDtoImplCopyWithImpl(_$PaginationDtoImpl _value, $Res Function(_$PaginationDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of PaginationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? total = null,}) {
  return _then(_$PaginationDtoImpl(
current: null == current ? _value.current : current // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _value.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$PaginationDtoImpl extends _PaginationDto  {
  const _$PaginationDtoImpl({required this.current, required this.total}): super._();

  factory _$PaginationDtoImpl.fromJson(Map<String, dynamic> json) => _$$PaginationDtoImplFromJson(json);

@override final  int current;
@override final  int total;

@override
String toString() {
  return 'PaginationDto(current: $current, total: $total)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PaginationDtoImpl&&(identical(other.current, current) || other.current == current)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,total);

/// Create a copy of PaginationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PaginationDtoImplCopyWith<_$PaginationDtoImpl> get copyWith => __$$PaginationDtoImplCopyWithImpl<_$PaginationDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$PaginationDtoImplToJson(this, );
}
}


abstract class _PaginationDto extends PaginationDto {
  const factory _PaginationDto({required final  int current, required final  int total}) = _$PaginationDtoImpl;
  const _PaginationDto._(): super._();

  factory _PaginationDto.fromJson(Map<String, dynamic> json) = _$PaginationDtoImpl.fromJson;

@override int get current;@override int get total;
/// Create a copy of PaginationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PaginationDtoImplCopyWith<_$PaginationDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
