// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_data_committer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameDataCommitterDto _$GameDataCommitterDtoFromJson(Map<String, dynamic> json) {
  return _GameDataCommitterDto.fromJson(json);
}

/// @nodoc
mixin _$GameDataCommitterDto {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameDataCommitterDtoCopyWith<GameDataCommitterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDataCommitterDtoCopyWith<$Res> {
  factory $GameDataCommitterDtoCopyWith(GameDataCommitterDto value,
          $Res Function(GameDataCommitterDto) then) =
      _$GameDataCommitterDtoCopyWithImpl<$Res>;
  $Res call({String name, String email, DateTime date});
}

/// @nodoc
class _$GameDataCommitterDtoCopyWithImpl<$Res>
    implements $GameDataCommitterDtoCopyWith<$Res> {
  _$GameDataCommitterDtoCopyWithImpl(this._value, this._then);

  final GameDataCommitterDto _value;
  // ignore: unused_field
  final $Res Function(GameDataCommitterDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_GameDataCommitterDtoCopyWith<$Res>
    implements $GameDataCommitterDtoCopyWith<$Res> {
  factory _$$_GameDataCommitterDtoCopyWith(_$_GameDataCommitterDto value,
          $Res Function(_$_GameDataCommitterDto) then) =
      __$$_GameDataCommitterDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, DateTime date});
}

/// @nodoc
class __$$_GameDataCommitterDtoCopyWithImpl<$Res>
    extends _$GameDataCommitterDtoCopyWithImpl<$Res>
    implements _$$_GameDataCommitterDtoCopyWith<$Res> {
  __$$_GameDataCommitterDtoCopyWithImpl(_$_GameDataCommitterDto _value,
      $Res Function(_$_GameDataCommitterDto) _then)
      : super(_value, (v) => _then(v as _$_GameDataCommitterDto));

  @override
  _$_GameDataCommitterDto get _value => super._value as _$_GameDataCommitterDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_GameDataCommitterDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameDataCommitterDto implements _GameDataCommitterDto {
  const _$_GameDataCommitterDto(
      {required this.name, required this.email, required this.date});

  factory _$_GameDataCommitterDto.fromJson(Map<String, dynamic> json) =>
      _$$_GameDataCommitterDtoFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'GameDataCommitterDto(name: $name, email: $email, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameDataCommitterDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_GameDataCommitterDtoCopyWith<_$_GameDataCommitterDto> get copyWith =>
      __$$_GameDataCommitterDtoCopyWithImpl<_$_GameDataCommitterDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameDataCommitterDtoToJson(
      this,
    );
  }
}

abstract class _GameDataCommitterDto implements GameDataCommitterDto {
  const factory _GameDataCommitterDto(
      {required final String name,
      required final String email,
      required final DateTime date}) = _$_GameDataCommitterDto;

  factory _GameDataCommitterDto.fromJson(Map<String, dynamic> json) =
      _$_GameDataCommitterDto.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_GameDataCommitterDtoCopyWith<_$_GameDataCommitterDto> get copyWith =>
      throw _privateConstructorUsedError;
}
