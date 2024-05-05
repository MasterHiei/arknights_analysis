// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_release_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LatestReleaseDto _$LatestReleaseDtoFromJson(Map<String, dynamic> json) {
return _LatestReleaseDto.fromJson(json);
}

/// @nodoc
mixin _$LatestReleaseDto {

 int get id => throw _privateConstructorUsedError;@JsonKey(name: 'node_id') String get nodeId => throw _privateConstructorUsedError; String get name => throw _privateConstructorUsedError;@JsonKey(name: 'tag_name') String get tagName => throw _privateConstructorUsedError; bool get draft => throw _privateConstructorUsedError; bool get prerelease => throw _privateConstructorUsedError;@JsonKey(name: 'created_at') DateTime get createdAt => throw _privateConstructorUsedError;@JsonKey(name: 'published_at') DateTime get publishedAt => throw _privateConstructorUsedError;@JsonKey(defaultValue: <LatestReleaseAssetDto>[]) List<LatestReleaseAssetDto> get assets => throw _privateConstructorUsedError;






Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
@JsonKey(ignore: true)
$LatestReleaseDtoCopyWith<LatestReleaseDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $LatestReleaseDtoCopyWith<$Res>  {
  factory $LatestReleaseDtoCopyWith(LatestReleaseDto value, $Res Function(LatestReleaseDto) then) = _$LatestReleaseDtoCopyWithImpl<$Res, LatestReleaseDto>;
@useResult
$Res call({
 int id,@JsonKey(name: 'node_id') String nodeId, String name,@JsonKey(name: 'tag_name') String tagName, bool draft, bool prerelease,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'published_at') DateTime publishedAt,@JsonKey(defaultValue: <LatestReleaseAssetDto>[]) List<LatestReleaseAssetDto> assets
});



}

/// @nodoc
class _$LatestReleaseDtoCopyWithImpl<$Res,$Val extends LatestReleaseDto> implements $LatestReleaseDtoCopyWith<$Res> {
  _$LatestReleaseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nodeId = null,Object? name = null,Object? tagName = null,Object? draft = null,Object? prerelease = null,Object? createdAt = null,Object? publishedAt = null,Object? assets = null,}) {
  return _then(_value.copyWith(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as int,nodeId: null == nodeId ? _value.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,tagName: null == tagName ? _value.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,draft: null == draft ? _value.draft : draft // ignore: cast_nullable_to_non_nullable
as bool,prerelease: null == prerelease ? _value.prerelease : prerelease // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _value.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,publishedAt: null == publishedAt ? _value.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,assets: null == assets ? _value.assets : assets // ignore: cast_nullable_to_non_nullable
as List<LatestReleaseAssetDto>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$LatestReleaseDtoImplCopyWith<$Res> implements $LatestReleaseDtoCopyWith<$Res> {
  factory _$$LatestReleaseDtoImplCopyWith(_$LatestReleaseDtoImpl value, $Res Function(_$LatestReleaseDtoImpl) then) = __$$LatestReleaseDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'node_id') String nodeId, String name,@JsonKey(name: 'tag_name') String tagName, bool draft, bool prerelease,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'published_at') DateTime publishedAt,@JsonKey(defaultValue: <LatestReleaseAssetDto>[]) List<LatestReleaseAssetDto> assets
});



}

/// @nodoc
class __$$LatestReleaseDtoImplCopyWithImpl<$Res> extends _$LatestReleaseDtoCopyWithImpl<$Res, _$LatestReleaseDtoImpl> implements _$$LatestReleaseDtoImplCopyWith<$Res> {
  __$$LatestReleaseDtoImplCopyWithImpl(_$LatestReleaseDtoImpl _value, $Res Function(_$LatestReleaseDtoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nodeId = null,Object? name = null,Object? tagName = null,Object? draft = null,Object? prerelease = null,Object? createdAt = null,Object? publishedAt = null,Object? assets = null,}) {
  return _then(_$LatestReleaseDtoImpl(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as int,nodeId: null == nodeId ? _value.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,tagName: null == tagName ? _value.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,draft: null == draft ? _value.draft : draft // ignore: cast_nullable_to_non_nullable
as bool,prerelease: null == prerelease ? _value.prerelease : prerelease // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _value.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,publishedAt: null == publishedAt ? _value.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,assets: null == assets ? _value._assets : assets // ignore: cast_nullable_to_non_nullable
as List<LatestReleaseAssetDto>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$LatestReleaseDtoImpl extends _LatestReleaseDto  {
  const _$LatestReleaseDtoImpl({required this.id, @JsonKey(name: 'node_id') required this.nodeId, required this.name, @JsonKey(name: 'tag_name') required this.tagName, required this.draft, required this.prerelease, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'published_at') required this.publishedAt, @JsonKey(defaultValue: <LatestReleaseAssetDto>[]) required final  List<LatestReleaseAssetDto> assets}): _assets = assets,super._();

  factory _$LatestReleaseDtoImpl.fromJson(Map<String, dynamic> json) => _$$LatestReleaseDtoImplFromJson(json);

@override final  int id;
@override@JsonKey(name: 'node_id') final  String nodeId;
@override final  String name;
@override@JsonKey(name: 'tag_name') final  String tagName;
@override final  bool draft;
@override final  bool prerelease;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'published_at') final  DateTime publishedAt;
 final  List<LatestReleaseAssetDto> _assets;
@override@JsonKey(defaultValue: <LatestReleaseAssetDto>[]) List<LatestReleaseAssetDto> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}


@override
String toString() {
  return 'LatestReleaseDto(id: $id, nodeId: $nodeId, name: $name, tagName: $tagName, draft: $draft, prerelease: $prerelease, createdAt: $createdAt, publishedAt: $publishedAt, assets: $assets)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LatestReleaseDtoImpl&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.tagName, tagName) || other.tagName == tagName)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.prerelease, prerelease) || other.prerelease == prerelease)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&const DeepCollectionEquality().equals(other._assets, _assets));
}

@JsonKey(ignore: true)
@override
int get hashCode => Object.hash(runtimeType,id,nodeId,name,tagName,draft,prerelease,createdAt,publishedAt,const DeepCollectionEquality().hash(_assets));

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$LatestReleaseDtoImplCopyWith<_$LatestReleaseDtoImpl> get copyWith => __$$LatestReleaseDtoImplCopyWithImpl<_$LatestReleaseDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$LatestReleaseDtoImplToJson(this, );
}
}


abstract class _LatestReleaseDto extends LatestReleaseDto {
  const factory _LatestReleaseDto({required final  int id, @JsonKey(name: 'node_id') required final  String nodeId, required final  String name, @JsonKey(name: 'tag_name') required final  String tagName, required final  bool draft, required final  bool prerelease, @JsonKey(name: 'created_at') required final  DateTime createdAt, @JsonKey(name: 'published_at') required final  DateTime publishedAt, @JsonKey(defaultValue: <LatestReleaseAssetDto>[]) required final  List<LatestReleaseAssetDto> assets}) = _$LatestReleaseDtoImpl;
  const _LatestReleaseDto._(): super._();

  factory _LatestReleaseDto.fromJson(Map<String, dynamic> json) = _$LatestReleaseDtoImpl.fromJson;

@override  int get id;@override @JsonKey(name: 'node_id') String get nodeId;@override  String get name;@override @JsonKey(name: 'tag_name') String get tagName;@override  bool get draft;@override  bool get prerelease;@override @JsonKey(name: 'created_at') DateTime get createdAt;@override @JsonKey(name: 'published_at') DateTime get publishedAt;@override @JsonKey(defaultValue: <LatestReleaseAssetDto>[]) List<LatestReleaseAssetDto> get assets;
@override @JsonKey(ignore: true)
_$$LatestReleaseDtoImplCopyWith<_$LatestReleaseDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
