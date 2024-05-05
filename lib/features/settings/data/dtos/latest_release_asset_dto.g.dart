// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_release_asset_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatestReleaseAssetDtoImpl _$$LatestReleaseAssetDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LatestReleaseAssetDtoImpl(
      id: (json['id'] as num).toInt(),
      nodeId: json['node_id'] as String,
      name: json['name'] as String,
      size: (json['size'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      browserDownloadUrl: json['browser_download_url'] as String,
    );

Map<String, dynamic> _$$LatestReleaseAssetDtoImplToJson(
        _$LatestReleaseAssetDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'size': instance.size,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'browser_download_url': instance.browserDownloadUrl,
    };
