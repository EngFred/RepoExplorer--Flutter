import '../../domain/entity/repo.dart';
import '../local/repo_database.dart';
import '../remote/dto/repo_dto.dart';
import 'package:drift/drift.dart' as drift;

extension RepoDtoMapper on RepoDto {
  Repo toDomain({bool isFavorite = false}) {
    return Repo(
      id: id,
      name: name,
      fullName: fullName,
      description: description,
      ownerAvatarUrl: owner.avatarUrl,
      stars: stars,
      forks: forks,
      watchers: watchers,
      openIssues: openIssues,
      language: language,
      htmlUrl: htmlUrl,
      isFavorite: isFavorite,
    );
  }
}

extension RepoEntityMapper on RepoTableData {
  Repo toDomain() {
    return Repo(
      id: id,
      name: name,
      fullName: fullName,
      description: description,
      ownerAvatarUrl: ownerAvatarUrl,
      stars: stars,
      forks: forks,
      watchers: watchers,
      openIssues: openIssues,
      language: language,
      htmlUrl: htmlUrl,
      isFavorite: true,
    );
  }
}

extension RepoDomainMapper on Repo {
  RepoTableCompanion toCompanion() {
    return RepoTableCompanion(
      id: drift.Value(id),
      name: drift.Value(name),
      fullName: drift.Value(fullName),
      description: drift.Value(description),
      ownerAvatarUrl: drift.Value(ownerAvatarUrl),
      stars: drift.Value(stars),
      forks: drift.Value(forks),
      watchers: drift.Value(watchers),
      openIssues: drift.Value(openIssues),
      language: drift.Value(language),
      htmlUrl: drift.Value(htmlUrl),
    );
  }
}
