import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/settings/latest_release.dart';
import 'latest_release_asset_dto.dart';

part 'latest_release_dto.freezed.dart';
part 'latest_release_dto.g.dart';

@freezed
class LatestReleaseDto with _$LatestReleaseDto {
  const factory LatestReleaseDto({
    required int id,
    @JsonKey(name: 'node_id') required String nodeId,
    required String name,
    @JsonKey(name: 'tag_name') required String tagName,
    required bool draft,
    required bool prerelease,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'published_at') required DateTime publishedAt,
    @JsonKey(defaultValue: <LatestReleaseAssetDto>[])
        required List<LatestReleaseAssetDto> assets,
  }) = _LatestReleaseDto;

  factory LatestReleaseDto.fromJson(Json json) =>
      _$LatestReleaseDtoFromJson(json);

  const LatestReleaseDto._();

  LatestRelease toDomain() => LatestRelease(
        id: id,
        nodeId: nodeId,
        name: name,
        tagName: tagName,
        draft: draft,
        prerelease: prerelease,
        createdAt: createdAt,
        publishedAt: publishedAt,
        assets: assets.map((asset) => asset.toDomain()).toList(),
      );
}
