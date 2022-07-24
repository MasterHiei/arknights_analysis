// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data_commit_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameDataCommitResponseDto _$$_GameDataCommitResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _$_GameDataCommitResponseDto(
      sha: json['sha'] as String,
      nodeId: json['node_id'] as String,
      commit:
          GameDataCommitDto.fromJson(json['commit'] as Map<String, dynamic>),
      url: json['url'] as String,
      htmlUrl: json['html_url'] as String,
    );

Map<String, dynamic> _$$_GameDataCommitResponseDtoToJson(
        _$_GameDataCommitResponseDto instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'node_id': instance.nodeId,
      'commit': instance.commit,
      'url': instance.url,
      'html_url': instance.htmlUrl,
    };
