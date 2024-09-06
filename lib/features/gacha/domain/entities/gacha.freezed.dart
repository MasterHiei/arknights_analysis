// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Gacha {

 List<GachaRecord> get records => throw _privateConstructorUsedError; Pagination get pagination => throw _privateConstructorUsedError;







/// Create a copy of Gacha
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$GachaCopyWith<Gacha> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaCopyWith<$Res>  {
  factory $GachaCopyWith(Gacha value, $Res Function(Gacha) then) = _$GachaCopyWithImpl<$Res, Gacha>;
@useResult
$Res call({
 List<GachaRecord> records, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$GachaCopyWithImpl<$Res,$Val extends Gacha> implements $GachaCopyWith<$Res> {
  _$GachaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Gacha
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_value.copyWith(
records: null == records ? _value.records : records // ignore: cast_nullable_to_non_nullable
as List<GachaRecord>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  )as $Val);
}
/// Create a copy of Gacha
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
abstract class _$$GachaImplCopyWith<$Res> implements $GachaCopyWith<$Res> {
  factory _$$GachaImplCopyWith(_$GachaImpl value, $Res Function(_$GachaImpl) then) = __$$GachaImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<GachaRecord> records, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$GachaImplCopyWithImpl<$Res> extends _$GachaCopyWithImpl<$Res, _$GachaImpl> implements _$$GachaImplCopyWith<$Res> {
  __$$GachaImplCopyWithImpl(_$GachaImpl _value, $Res Function(_$GachaImpl) _then)
      : super(_value, _then);


/// Create a copy of Gacha
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_$GachaImpl(
records: null == records ? _value._records : records // ignore: cast_nullable_to_non_nullable
as List<GachaRecord>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}


}

/// @nodoc


class _$GachaImpl  implements _Gacha {
  const _$GachaImpl({required final  List<GachaRecord> records, required this.pagination}): _records = records;

  

 final  List<GachaRecord> _records;
@override List<GachaRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  Pagination pagination;

@override
String toString() {
  return 'Gacha(records: $records, pagination: $pagination)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaImpl&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),pagination);

/// Create a copy of Gacha
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GachaImplCopyWith<_$GachaImpl> get copyWith => __$$GachaImplCopyWithImpl<_$GachaImpl>(this, _$identity);








}


abstract class _Gacha implements Gacha {
  const factory _Gacha({required final  List<GachaRecord> records, required final  Pagination pagination}) = _$GachaImpl;
  

  

@override List<GachaRecord> get records;@override Pagination get pagination;
/// Create a copy of Gacha
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$GachaImplCopyWith<_$GachaImpl> get copyWith => throw _privateConstructorUsedError;

}
