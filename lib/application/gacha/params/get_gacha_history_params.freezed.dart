// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_gacha_history_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetGachaHistoryParams {
  Uid get uid => throw _privateConstructorUsedError;
  String? get pool => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetGachaHistoryParamsCopyWith<GetGachaHistoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGachaHistoryParamsCopyWith<$Res> {
  factory $GetGachaHistoryParamsCopyWith(GetGachaHistoryParams value,
          $Res Function(GetGachaHistoryParams) then) =
      _$GetGachaHistoryParamsCopyWithImpl<$Res>;
  $Res call({Uid uid, String? pool});
}

/// @nodoc
class _$GetGachaHistoryParamsCopyWithImpl<$Res>
    implements $GetGachaHistoryParamsCopyWith<$Res> {
  _$GetGachaHistoryParamsCopyWithImpl(this._value, this._then);

  final GetGachaHistoryParams _value;
  // ignore: unused_field
  final $Res Function(GetGachaHistoryParams) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? pool = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetGachaHistoryParamsCopyWith<$Res>
    implements $GetGachaHistoryParamsCopyWith<$Res> {
  factory _$$_GetGachaHistoryParamsCopyWith(_$_GetGachaHistoryParams value,
          $Res Function(_$_GetGachaHistoryParams) then) =
      __$$_GetGachaHistoryParamsCopyWithImpl<$Res>;
  @override
  $Res call({Uid uid, String? pool});
}

/// @nodoc
class __$$_GetGachaHistoryParamsCopyWithImpl<$Res>
    extends _$GetGachaHistoryParamsCopyWithImpl<$Res>
    implements _$$_GetGachaHistoryParamsCopyWith<$Res> {
  __$$_GetGachaHistoryParamsCopyWithImpl(_$_GetGachaHistoryParams _value,
      $Res Function(_$_GetGachaHistoryParams) _then)
      : super(_value, (v) => _then(v as _$_GetGachaHistoryParams));

  @override
  _$_GetGachaHistoryParams get _value =>
      super._value as _$_GetGachaHistoryParams;

  @override
  $Res call({
    Object? uid = freezed,
    Object? pool = freezed,
  }) {
    return _then(_$_GetGachaHistoryParams(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      pool: pool == freezed
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetGachaHistoryParams implements _GetGachaHistoryParams {
  const _$_GetGachaHistoryParams({required this.uid, this.pool});

  @override
  final Uid uid;
  @override
  final String? pool;

  @override
  String toString() {
    return 'GetGachaHistoryParams(uid: $uid, pool: $pool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetGachaHistoryParams &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.pool, pool));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(pool));

  @JsonKey(ignore: true)
  @override
  _$$_GetGachaHistoryParamsCopyWith<_$_GetGachaHistoryParams> get copyWith =>
      __$$_GetGachaHistoryParamsCopyWithImpl<_$_GetGachaHistoryParams>(
          this, _$identity);
}

abstract class _GetGachaHistoryParams implements GetGachaHistoryParams {
  const factory _GetGachaHistoryParams(
      {required final Uid uid, final String? pool}) = _$_GetGachaHistoryParams;

  @override
  Uid get uid;
  @override
  String? get pool;
  @override
  @JsonKey(ignore: true)
  _$$_GetGachaHistoryParamsCopyWith<_$_GetGachaHistoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}
