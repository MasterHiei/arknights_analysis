import 'package:freezed_annotation/freezed_annotation.dart';

part 'latest_release_asset.freezed.dart';

@freezed
class LatestReleaseAsset with _$LatestReleaseAsset {
  const factory LatestReleaseAsset({
    required int id,
    required String nodeId,
    required String name,
    required int size,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String browserDownloadUrl,
  }) = _LatestReleaseAsset;
}
