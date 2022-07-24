import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import 'game_data_committer_dto.dart';

part 'game_data_commit_dto.freezed.dart';
part 'game_data_commit_dto.g.dart';

@freezed
class GameDataCommitDto with _$GameDataCommitDto {
  const factory GameDataCommitDto({
    required GameDataCommitterDto committer,
    required String message,
    required String url,
  }) = _GameDataCommitDto;

  factory GameDataCommitDto.fromJson(Json json) =>
      _$GameDataCommitDtoFromJson(json);
}
