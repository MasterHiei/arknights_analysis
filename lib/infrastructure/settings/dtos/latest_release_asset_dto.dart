import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/settings/latest_release_asset.dart';

part 'latest_release_asset_dto.freezed.dart';
part 'latest_release_asset_dto.g.dart';

@freezed
class LatestReleaseAssetDto with _$LatestReleaseAssetDto {
  const factory LatestReleaseAssetDto({
    required int id,
    @JsonKey(name: 'node_id') required String nodeId,
    required String name,
    required int size,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'browser_download_url') required String browserDownloadUrl,
  }) = _LatestReleaseAssetDto;

  factory LatestReleaseAssetDto.fromJson(Json json) =>
      _$LatestReleaseAssetDtoFromJson(json);

  const LatestReleaseAssetDto._();

  LatestReleaseAsset toDomain() => LatestReleaseAsset(
        id: id,
        nodeId: nodeId,
        name: name,
        size: size,
        createdAt: createdAt,
        updatedAt: updatedAt,
        browserDownloadUrl: browserDownloadUrl,
      );
}
