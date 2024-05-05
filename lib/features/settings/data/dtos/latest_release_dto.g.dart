// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_release_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatestReleaseDtoImpl _$$LatestReleaseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LatestReleaseDtoImpl(
      id: (json['id'] as num).toInt(),
      nodeId: json['node_id'] as String,
      name: json['name'] as String,
      tagName: json['tag_name'] as String,
      draft: json['draft'] as bool,
      prerelease: json['prerelease'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      publishedAt: DateTime.parse(json['published_at'] as String),
      assets: (json['assets'] as List<dynamic>?)
              ?.map((e) =>
                  LatestReleaseAssetDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$LatestReleaseDtoImplToJson(
        _$LatestReleaseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'tag_name': instance.tagName,
      'draft': instance.draft,
      'prerelease': instance.prerelease,
      'created_at': instance.createdAt.toIso8601String(),
      'published_at': instance.publishedAt.toIso8601String(),
      'assets': instance.assets,
    };
