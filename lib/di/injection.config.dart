// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/local/repo_dao.dart' as _i715;
import '../data/local/repo_database.dart' as _i676;
import '../data/remote/github_api.dart' as _i555;
import '../data/repository/repo_repository_impl.dart' as _i1018;
import '../domain/repository/repo_repository.dart' as _i772;
import '../domain/usecase/favorites_usecases.dart' as _i31;
import '../domain/usecase/get_repo_usecase.dart' as _i332;
import '../domain/usecase/search_repos_usecase.dart' as _i536;
import 'network_module.dart' as _i567;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    gh.singleton<_i676.RepoDatabase>(() => _i676.RepoDatabase());
    gh.singleton<_i361.Dio>(() => networkModule.dio);
    gh.singleton<_i555.GithubApi>(() => _i555.GithubApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i715.RepoDao>(
      () => _i715.RepoDao(gh<_i676.RepoDatabase>()),
    );
    gh.factory<_i772.RepoRepository>(
      () =>
          _i1018.RepoRepositoryImpl(gh<_i555.GithubApi>(), gh<_i715.RepoDao>()),
    );
    gh.factory<_i31.GetFavoritesUseCase>(
      () => _i31.GetFavoritesUseCase(gh<_i772.RepoRepository>()),
    );
    gh.factory<_i31.ToggleFavoriteUseCase>(
      () => _i31.ToggleFavoriteUseCase(gh<_i772.RepoRepository>()),
    );
    gh.factory<_i31.CheckFavoriteUseCase>(
      () => _i31.CheckFavoriteUseCase(gh<_i772.RepoRepository>()),
    );
    gh.factory<_i332.GetRepoUseCase>(
      () => _i332.GetRepoUseCase(gh<_i772.RepoRepository>()),
    );
    gh.factory<_i536.SearchReposUseCase>(
      () => _i536.SearchReposUseCase(gh<_i772.RepoRepository>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i567.NetworkModule {}
