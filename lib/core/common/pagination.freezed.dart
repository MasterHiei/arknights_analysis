// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Pagination {

 int get current => throw _privateConstructorUsedError; int get total => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$PaginationCopyWith<Pagination> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) then) = _$PaginationCopyWithImpl<$Res, Pagination>;
@useResult
$Res call({
 int current, int total
});



}

/// @nodoc
class _$PaginationCopyWithImpl<$Res,$Val extends Pagination> implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? total = null,}) {
  return _then(_value.copyWith(
current: null == current ? _value.current : current // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _value.total : total // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(_$PaginationImpl value, $Res Function(_$PaginationImpl) then) = __$$PaginationImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int current, int total
});



}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res> extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl> implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(_$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? total = null,}) {
  return _then(_$PaginationImpl(
current: null == current ? _value.current : current // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _value.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$PaginationImpl extends _Pagination  {
  const _$PaginationImpl({required this.current, required this.total}): super._();

  

@override final  int current;
@override final  int total;

@override
String toString() {
  return 'Pagination(current: $current, total: $total)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PaginationImpl&&(identical(other.current, current) || other.current == current)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,current,total);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$PaginationImplCopyWith<_$PaginationImpl> get copyWith => __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);








}


abstract class _Pagination extends Pagination {
  const factory _Pagination({required final  int current, required final  int total}) = _$PaginationImpl;
  const _Pagination._(): super._();

  

@override  int get current;@override  int get total;
@override @JsonKey(ignore: true)
_$$PaginationImplCopyWith<_$PaginationImpl> get copyWith => throw _privateConstructorUsedError;

}
