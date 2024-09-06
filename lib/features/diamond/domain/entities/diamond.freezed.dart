// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diamond.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Diamond {

 List<DiamondRecord> get records => throw _privateConstructorUsedError; Pagination get pagination => throw _privateConstructorUsedError;







/// Create a copy of Diamond
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$DiamondCopyWith<Diamond> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $DiamondCopyWith<$Res>  {
  factory $DiamondCopyWith(Diamond value, $Res Function(Diamond) then) = _$DiamondCopyWithImpl<$Res, Diamond>;
@useResult
$Res call({
 List<DiamondRecord> records, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$DiamondCopyWithImpl<$Res,$Val extends Diamond> implements $DiamondCopyWith<$Res> {
  _$DiamondCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Diamond
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_value.copyWith(
records: null == records ? _value.records : records // ignore: cast_nullable_to_non_nullable
as List<DiamondRecord>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  )as $Val);
}
/// Create a copy of Diamond
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_value.pagination, (value) {
    return _then(_value.copyWith(pagination: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$DiamondImplCopyWith<$Res> implements $DiamondCopyWith<$Res> {
  factory _$$DiamondImplCopyWith(_$DiamondImpl value, $Res Function(_$DiamondImpl) then) = __$$DiamondImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<DiamondRecord> records, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$DiamondImplCopyWithImpl<$Res> extends _$DiamondCopyWithImpl<$Res, _$DiamondImpl> implements _$$DiamondImplCopyWith<$Res> {
  __$$DiamondImplCopyWithImpl(_$DiamondImpl _value, $Res Function(_$DiamondImpl) _then)
      : super(_value, _then);


/// Create a copy of Diamond
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_$DiamondImpl(
records: null == records ? _value._records : records // ignore: cast_nullable_to_non_nullable
as List<DiamondRecord>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}


}

/// @nodoc


class _$DiamondImpl  implements _Diamond {
  const _$DiamondImpl({required final  List<DiamondRecord> records, required this.pagination}): _records = records;

  

 final  List<DiamondRecord> _records;
@override List<DiamondRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  Pagination pagination;

@override
String toString() {
  return 'Diamond(records: $records, pagination: $pagination)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DiamondImpl&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),pagination);

/// Create a copy of Diamond
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DiamondImplCopyWith<_$DiamondImpl> get copyWith => __$$DiamondImplCopyWithImpl<_$DiamondImpl>(this, _$identity);








}


abstract class _Diamond implements Diamond {
  const factory _Diamond({required final  List<DiamondRecord> records, required final  Pagination pagination}) = _$DiamondImpl;
  

  

@override List<DiamondRecord> get records;@override Pagination get pagination;
/// Create a copy of Diamond
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DiamondImplCopyWith<_$DiamondImpl> get copyWith => throw _privateConstructorUsedError;

}
