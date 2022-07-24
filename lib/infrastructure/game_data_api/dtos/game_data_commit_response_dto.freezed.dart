// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_data_commit_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameDataCommitResponseDto _$GameDataCommitResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GameDataCommitResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GameDataCommitResponseDto {
  String get sha => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  GameDataCommitDto get commit => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameDataCommitResponseDtoCopyWith<GameDataCommitResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDataCommitResponseDtoCopyWith<$Res> {
  factory $GameDataCommitResponseDtoCopyWith(GameDataCommitResponseDto value,
          $Res Function(GameDataCommitResponseDto) then) =
      _$GameDataCommitResponseDtoCopyWithImpl<$Res>;
  $Res call(
      {String sha,
      @JsonKey(name: 'node_id') String nodeId,
      GameDataCommitDto commit,
      String url,
      @JsonKey(name: 'html_url') String htmlUrl});

  $GameDataCommitDtoCopyWith<$Res> get commit;
}

/// @nodoc
class _$GameDataCommitResponseDtoCopyWithImpl<$Res>
    implements $GameDataCommitResponseDtoCopyWith<$Res> {
  _$GameDataCommitResponseDtoCopyWithImpl(this._value, this._then);

  final GameDataCommitResponseDto _value;
  // ignore: unused_field
  final $Res Function(GameDataCommitResponseDto) _then;

  @override
  $Res call({
    Object? sha = freezed,
    Object? nodeId = freezed,
    Object? commit = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_value.copyWith(
      sha: sha == freezed
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      commit: commit == freezed
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as GameDataCommitDto,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GameDataCommitDtoCopyWith<$Res> get commit {
    return $GameDataCommitDtoCopyWith<$Res>(_value.commit, (value) {
      return _then(_value.copyWith(commit: value));
    });
  }
}

/// @nodoc
abstract class _$$_GameDataCommitResponseDtoCopyWith<$Res>
    implements $GameDataCommitResponseDtoCopyWith<$Res> {
  factory _$$_GameDataCommitResponseDtoCopyWith(
          _$_GameDataCommitResponseDto value,
          $Res Function(_$_GameDataCommitResponseDto) then) =
      __$$_GameDataCommitResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sha,
      @JsonKey(name: 'node_id') String nodeId,
      GameDataCommitDto commit,
      String url,
      @JsonKey(name: 'html_url') String htmlUrl});

  @override
  $GameDataCommitDtoCopyWith<$Res> get commit;
}

/// @nodoc
class __$$_GameDataCommitResponseDtoCopyWithImpl<$Res>
    extends _$GameDataCommitResponseDtoCopyWithImpl<$Res>
    implements _$$_GameDataCommitResponseDtoCopyWith<$Res> {
  __$$_GameDataCommitResponseDtoCopyWithImpl(
      _$_GameDataCommitResponseDto _value,
      $Res Function(_$_GameDataCommitResponseDto) _then)
      : super(_value, (v) => _then(v as _$_GameDataCommitResponseDto));

  @override
  _$_GameDataCommitResponseDto get _value =>
      super._value as _$_GameDataCommitResponseDto;

  @override
  $Res call({
    Object? sha = freezed,
    Object? nodeId = freezed,
    Object? commit = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_$_GameDataCommitResponseDto(
      sha: sha == freezed
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      commit: commit == freezed
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as GameDataCommitDto,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameDataCommitResponseDto implements _GameDataCommitResponseDto {
  const _$_GameDataCommitResponseDto(
      {required this.sha,
      @JsonKey(name: 'node_id') required this.nodeId,
      required this.commit,
      required this.url,
      @JsonKey(name: 'html_url') required this.htmlUrl});

  factory _$_GameDataCommitResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_GameDataCommitResponseDtoFromJson(json);

  @override
  final String sha;
  @override
  @JsonKey(name: 'node_id')
  final String nodeId;
  @override
  final GameDataCommitDto commit;
  @override
  final String url;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;

  @override
  String toString() {
    return 'GameDataCommitResponseDto(sha: $sha, nodeId: $nodeId, commit: $commit, url: $url, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameDataCommitResponseDto &&
            const DeepCollectionEquality().equals(other.sha, sha) &&
            const DeepCollectionEquality().equals(other.nodeId, nodeId) &&
            const DeepCollectionEquality().equals(other.commit, commit) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sha),
      const DeepCollectionEquality().hash(nodeId),
      const DeepCollectionEquality().hash(commit),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(htmlUrl));

  @JsonKey(ignore: true)
  @override
  _$$_GameDataCommitResponseDtoCopyWith<_$_GameDataCommitResponseDto>
      get copyWith => __$$_GameDataCommitResponseDtoCopyWithImpl<
          _$_GameDataCommitResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameDataCommitResponseDtoToJson(
      this,
    );
  }
}

abstract class _GameDataCommitResponseDto implements GameDataCommitResponseDto {
  const factory _GameDataCommitResponseDto(
          {required final String sha,
          @JsonKey(name: 'node_id') required final String nodeId,
          required final GameDataCommitDto commit,
          required final String url,
          @JsonKey(name: 'html_url') required final String htmlUrl}) =
      _$_GameDataCommitResponseDto;

  factory _GameDataCommitResponseDto.fromJson(Map<String, dynamic> json) =
      _$_GameDataCommitResponseDto.fromJson;

  @override
  String get sha;
  @override
  @JsonKey(name: 'node_id')
  String get nodeId;
  @override
  GameDataCommitDto get commit;
  @override
  String get url;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  @JsonKey(ignore: true)
  _$$_GameDataCommitResponseDtoCopyWith<_$_GameDataCommitResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}
