// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Payment {

 List<PaymentRecord> get records => throw _privateConstructorUsedError; Pagination get pagination => throw _privateConstructorUsedError;







/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) = _$PaymentCopyWithImpl<$Res, Payment>;
@useResult
$Res call({
 List<PaymentRecord> records, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res,$Val extends Payment> implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_value.copyWith(
records: null == records ? _value.records : records // ignore: cast_nullable_to_non_nullable
as List<PaymentRecord>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  )as $Val);
}
/// Create a copy of Payment
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
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(_$PaymentImpl value, $Res Function(_$PaymentImpl) then) = __$$PaymentImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<PaymentRecord> records, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res> extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl> implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(_$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);


/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? pagination = null,}) {
  return _then(_$PaymentImpl(
records: null == records ? _value._records : records // ignore: cast_nullable_to_non_nullable
as List<PaymentRecord>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}


}

/// @nodoc


class _$PaymentImpl  implements _Payment {
  const _$PaymentImpl({required final  List<PaymentRecord> records, required this.pagination}): _records = records;

  

 final  List<PaymentRecord> _records;
@override List<PaymentRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  Pagination pagination;

@override
String toString() {
  return 'Payment(records: $records, pagination: $pagination)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PaymentImpl&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),pagination);

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PaymentImplCopyWith<_$PaymentImpl> get copyWith => __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);








}


abstract class _Payment implements Payment {
  const factory _Payment({required final  List<PaymentRecord> records, required final  Pagination pagination}) = _$PaymentImpl;
  

  

@override List<PaymentRecord> get records;@override Pagination get pagination;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PaymentImplCopyWith<_$PaymentImpl> get copyWith => throw _privateConstructorUsedError;

}
