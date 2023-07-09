import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'latest_release_asset.dart';

part 'latest_release.freezed.dart';

@freezed
class LatestRelease with _$LatestRelease {
  const factory LatestRelease({
    required int id,
    required String nodeId,
    required String name,
    required String tagName,
    required bool draft,
    required bool prerelease,
    required DateTime createdAt,
    required DateTime publishedAt,
    required List<LatestReleaseAsset> assets,
  }) = _LatestRelease;

  const LatestRelease._();

  String get version => name.split('+').firstOrNull ?? '';

  String get assetName => assets.firstOrNull?.name ?? '';

  String get browserDownloadUrl =>
      assets.firstOrNull?.browserDownloadUrl
          .replaceFirst('github.com', 'download.fgit.ml') ??
      '';
}
