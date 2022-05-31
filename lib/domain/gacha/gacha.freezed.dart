// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Gacha {
  List<GachaRecord> get list => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GachaCopyWith<Gacha> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaCopyWith<$Res> {
  factory $GachaCopyWith(Gacha value, $Res Function(Gacha) then) =
      _$GachaCopyWithImpl<$Res>;
  $Res call({List<GachaRecord> list, Pagination pagination});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$GachaCopyWithImpl<$Res> implements $GachaCopyWith<$Res> {
  _$GachaCopyWithImpl(this._value, this._then);

  final Gacha _value;
  // ignore: unused_field
  final $Res Function(Gacha) _then;

  @override
  $Res call({
    Object? list = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GachaRecord>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }

  @override
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }
}

/// @nodoc
abstract class _$$_GachaCopyWith<$Res> implements $GachaCopyWith<$Res> {
  factory _$$_GachaCopyWith(_$_Gacha value, $Res Function(_$_Gacha) then) =
      __$$_GachaCopyWithImpl<$Res>;
  @override
  $Res call({List<GachaRecord> list, Pagination pagination});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_GachaCopyWithImpl<$Res> extends _$GachaCopyWithImpl<$Res>
    implements _$$_GachaCopyWith<$Res> {
  __$$_GachaCopyWithImpl(_$_Gacha _value, $Res Function(_$_Gacha) _then)
      : super(_value, (v) => _then(v as _$_Gacha));

  @override
  _$_Gacha get _value => super._value as _$_Gacha;

  @override
  $Res call({
    Object? list = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_Gacha(
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GachaRecord>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }
}

/// @nodoc

class _$_Gacha implements _Gacha {
  const _$_Gacha(
      {required final List<GachaRecord> list, required this.pagination})
      : _list = list;

  final List<GachaRecord> _list;
  @override
  List<GachaRecord> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final Pagination pagination;

  @override
  String toString() {
    return 'Gacha(list: $list, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gacha &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other.pagination, pagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(pagination));

  @JsonKey(ignore: true)
  @override
  _$$_GachaCopyWith<_$_Gacha> get copyWith =>
      __$$_GachaCopyWithImpl<_$_Gacha>(this, _$identity);
}

abstract class _Gacha implements Gacha {
  const factory _Gacha(
      {required final List<GachaRecord> list,
      required final Pagination pagination}) = _$_Gacha;

  @override
  List<GachaRecord> get list => throw _privateConstructorUsedError;
  @override
  Pagination get pagination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GachaCopyWith<_$_Gacha> get copyWith =>
      throw _privateConstructorUsedError;
}
