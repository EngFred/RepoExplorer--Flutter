import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo.freezed.dart';

@freezed
abstract class Repo with _$Repo {
  const factory Repo({
    required int id,
    required String name,
    required String fullName,
    String? description,
    required String ownerAvatarUrl,
    required int stars,
    required int forks,
    required int watchers,
    required int openIssues,
    String? language,
    required String htmlUrl,
    @Default(false) bool isFavorite,
  }) = _Repo;
}
