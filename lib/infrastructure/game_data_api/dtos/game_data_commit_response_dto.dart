import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import 'game_data_commit_dto.dart';

part 'game_data_commit_response_dto.freezed.dart';
part 'game_data_commit_response_dto.g.dart';

@freezed
class GameDataCommitResponseDto with _$GameDataCommitResponseDto {
  const factory GameDataCommitResponseDto({
    required String sha,
    @JsonKey(name: 'node_id') required String nodeId,
    required GameDataCommitDto commit,
    required String url,
    @JsonKey(name: 'html_url') required String htmlUrl,
  }) = _GameDataCommitResponseDto;

  factory GameDataCommitResponseDto.fromJson(Json json) =>
      _$GameDataCommitResponseDtoFromJson(json);
}
