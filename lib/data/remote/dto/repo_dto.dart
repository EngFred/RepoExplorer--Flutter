import 'package:json_annotation/json_annotation.dart';

part 'repo_dto.g.dart';

@JsonSerializable()
class SearchResponseDto {
  final List<RepoDto> items;

  SearchResponseDto({required this.items});

  factory SearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseDtoFromJson(json);
}

@JsonSerializable()
class RepoDto {
  final int id;
  final String name;
  @JsonKey(name: 'full_name')
  final String fullName;
  final String? description;
  @JsonKey(name: 'stargazers_count')
  final int stars;
  @JsonKey(name: 'forks_count')
  final int forks;
  @JsonKey(name: 'watchers_count')
  final int watchers;
  @JsonKey(name: 'open_issues_count')
  final int openIssues;
  final String? language;
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  final OwnerDto owner;

  RepoDto({
    required this.id,
    required this.name,
    required this.fullName,
    this.description,
    required this.stars,
    required this.forks,
    required this.watchers,
    required this.openIssues,
    this.language,
    required this.htmlUrl,
    required this.owner,
  });

  factory RepoDto.fromJson(Map<String, dynamic> json) =>
      _$RepoDtoFromJson(json);
}

@JsonSerializable()
class OwnerDto {
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  OwnerDto({required this.avatarUrl});

  factory OwnerDto.fromJson(Map<String, dynamic> json) =>
      _$OwnerDtoFromJson(json);
}
