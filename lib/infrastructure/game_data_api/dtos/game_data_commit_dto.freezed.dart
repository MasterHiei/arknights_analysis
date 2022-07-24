// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_data_commit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameDataCommitDto _$GameDataCommitDtoFromJson(Map<String, dynamic> json) {
  return _GameDataCommitDto.fromJson(json);
}

/// @nodoc
mixin _$GameDataCommitDto {
  GameDataCommitterDto get committer => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameDataCommitDtoCopyWith<GameDataCommitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDataCommitDtoCopyWith<$Res> {
  factory $GameDataCommitDtoCopyWith(
          GameDataCommitDto value, $Res Function(GameDataCommitDto) then) =
      _$GameDataCommitDtoCopyWithImpl<$Res>;
  $Res call({GameDataCommitterDto committer, String message, String url});

  $GameDataCommitterDtoCopyWith<$Res> get committer;
}

/// @nodoc
class _$GameDataCommitDtoCopyWithImpl<$Res>
    implements $GameDataCommitDtoCopyWith<$Res> {
  _$GameDataCommitDtoCopyWithImpl(this._value, this._then);

  final GameDataCommitDto _value;
  // ignore: unused_field
  final $Res Function(GameDataCommitDto) _then;

  @override
  $Res call({
    Object? committer = freezed,
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      committer: committer == freezed
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as GameDataCommitterDto,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GameDataCommitterDtoCopyWith<$Res> get committer {
    return $GameDataCommitterDtoCopyWith<$Res>(_value.committer, (value) {
      return _then(_value.copyWith(committer: value));
    });
  }
}

/// @nodoc
abstract class _$$_GameDataCommitDtoCopyWith<$Res>
    implements $GameDataCommitDtoCopyWith<$Res> {
  factory _$$_GameDataCommitDtoCopyWith(_$_GameDataCommitDto value,
          $Res Function(_$_GameDataCommitDto) then) =
      __$$_GameDataCommitDtoCopyWithImpl<$Res>;
  @override
  $Res call({GameDataCommitterDto committer, String message, String url});

  @override
  $GameDataCommitterDtoCopyWith<$Res> get committer;
}

/// @nodoc
class __$$_GameDataCommitDtoCopyWithImpl<$Res>
    extends _$GameDataCommitDtoCopyWithImpl<$Res>
    implements _$$_GameDataCommitDtoCopyWith<$Res> {
  __$$_GameDataCommitDtoCopyWithImpl(
      _$_GameDataCommitDto _value, $Res Function(_$_GameDataCommitDto) _then)
      : super(_value, (v) => _then(v as _$_GameDataCommitDto));

  @override
  _$_GameDataCommitDto get _value => super._value as _$_GameDataCommitDto;

  @override
  $Res call({
    Object? committer = freezed,
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_GameDataCommitDto(
      committer: committer == freezed
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as GameDataCommitterDto,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameDataCommitDto implements _GameDataCommitDto {
  const _$_GameDataCommitDto(
      {required this.committer, required this.message, required this.url});

  factory _$_GameDataCommitDto.fromJson(Map<String, dynamic> json) =>
      _$$_GameDataCommitDtoFromJson(json);

  @override
  final GameDataCommitterDto committer;
  @override
  final String message;
  @override
  final String url;

  @override
  String toString() {
    return 'GameDataCommitDto(committer: $committer, message: $message, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameDataCommitDto &&
            const DeepCollectionEquality().equals(other.committer, committer) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(committer),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_GameDataCommitDtoCopyWith<_$_GameDataCommitDto> get copyWith =>
      __$$_GameDataCommitDtoCopyWithImpl<_$_GameDataCommitDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameDataCommitDtoToJson(
      this,
    );
  }
}

abstract class _GameDataCommitDto implements GameDataCommitDto {
  const factory _GameDataCommitDto(
      {required final GameDataCommitterDto committer,
      required final String message,
      required final String url}) = _$_GameDataCommitDto;

  factory _GameDataCommitDto.fromJson(Map<String, dynamic> json) =
      _$_GameDataCommitDto.fromJson;

  @override
  GameDataCommitterDto get committer;
  @override
  String get message;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_GameDataCommitDtoCopyWith<_$_GameDataCommitDto> get copyWith =>
      throw _privateConstructorUsedError;
}
