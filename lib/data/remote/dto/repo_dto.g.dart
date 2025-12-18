// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponseDto _$SearchResponseDtoFromJson(Map<String, dynamic> json) =>
    SearchResponseDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => RepoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseDtoToJson(SearchResponseDto instance) =>
    <String, dynamic>{'items': instance.items};

RepoDto _$RepoDtoFromJson(Map<String, dynamic> json) => RepoDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  fullName: json['full_name'] as String,
  description: json['description'] as String?,
  stars: (json['stargazers_count'] as num).toInt(),
  forks: (json['forks_count'] as num).toInt(),
  watchers: (json['watchers_count'] as num).toInt(),
  openIssues: (json['open_issues_count'] as num).toInt(),
  language: json['language'] as String?,
  htmlUrl: json['html_url'] as String,
  owner: OwnerDto.fromJson(json['owner'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RepoDtoToJson(RepoDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'full_name': instance.fullName,
  'description': instance.description,
  'stargazers_count': instance.stars,
  'forks_count': instance.forks,
  'watchers_count': instance.watchers,
  'open_issues_count': instance.openIssues,
  'language': instance.language,
  'html_url': instance.htmlUrl,
  'owner': instance.owner,
};

OwnerDto _$OwnerDtoFromJson(Map<String, dynamic> json) =>
    OwnerDto(avatarUrl: json['avatar_url'] as String);

Map<String, dynamic> _$OwnerDtoToJson(OwnerDto instance) => <String, dynamic>{
  'avatar_url': instance.avatarUrl,
};
