// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_char_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GachaCharDto _$GachaCharDtoFromJson(Map<String, dynamic> json) {
  return _GachaCharDto.fromJson(json);
}

/// @nodoc
mixin _$GachaCharDto {
  String get name => throw _privateConstructorUsedError;
  Rarity get rarity => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GachaCharDtoCopyWith<GachaCharDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaCharDtoCopyWith<$Res> {
  factory $GachaCharDtoCopyWith(
          GachaCharDto value, $Res Function(GachaCharDto) then) =
      _$GachaCharDtoCopyWithImpl<$Res>;
  $Res call({String name, Rarity rarity, bool isNew});
}

/// @nodoc
class _$GachaCharDtoCopyWithImpl<$Res> implements $GachaCharDtoCopyWith<$Res> {
  _$GachaCharDtoCopyWithImpl(this._value, this._then);

  final GachaCharDto _value;
  // ignore: unused_field
  final $Res Function(GachaCharDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rarity = freezed,
    Object? isNew = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: rarity == freezed
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_GachaCharDtoCopyWith<$Res>
    implements $GachaCharDtoCopyWith<$Res> {
  factory _$$_GachaCharDtoCopyWith(
          _$_GachaCharDto value, $Res Function(_$_GachaCharDto) then) =
      __$$_GachaCharDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, Rarity rarity, bool isNew});
}

/// @nodoc
class __$$_GachaCharDtoCopyWithImpl<$Res>
    extends _$GachaCharDtoCopyWithImpl<$Res>
    implements _$$_GachaCharDtoCopyWith<$Res> {
  __$$_GachaCharDtoCopyWithImpl(
      _$_GachaCharDto _value, $Res Function(_$_GachaCharDto) _then)
      : super(_value, (v) => _then(v as _$_GachaCharDto));

  @override
  _$_GachaCharDto get _value => super._value as _$_GachaCharDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? rarity = freezed,
    Object? isNew = freezed,
  }) {
    return _then(_$_GachaCharDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: rarity == freezed
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GachaCharDto extends _GachaCharDto {
  const _$_GachaCharDto(
      {required this.name, required this.rarity, required this.isNew})
      : super._();

  factory _$_GachaCharDto.fromJson(Map<String, dynamic> json) =>
      _$$_GachaCharDtoFromJson(json);

  @override
  final String name;
  @override
  final Rarity rarity;
  @override
  final bool isNew;

  @override
  String toString() {
    return 'GachaCharDto(name: $name, rarity: $rarity, isNew: $isNew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaCharDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.rarity, rarity) &&
            const DeepCollectionEquality().equals(other.isNew, isNew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(rarity),
      const DeepCollectionEquality().hash(isNew));

  @JsonKey(ignore: true)
  @override
  _$$_GachaCharDtoCopyWith<_$_GachaCharDto> get copyWith =>
      __$$_GachaCharDtoCopyWithImpl<_$_GachaCharDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GachaCharDtoToJson(this);
  }
}

abstract class _GachaCharDto extends GachaCharDto {
  const factory _GachaCharDto(
      {required final String name,
      required final Rarity rarity,
      required final bool isNew}) = _$_GachaCharDto;
  const _GachaCharDto._() : super._();

  factory _GachaCharDto.fromJson(Map<String, dynamic> json) =
      _$_GachaCharDto.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Rarity get rarity => throw _privateConstructorUsedError;
  @override
  bool get isNew => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GachaCharDtoCopyWith<_$_GachaCharDto> get copyWith =>
      throw _privateConstructorUsedError;
}
