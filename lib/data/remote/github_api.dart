import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'dto/repo_dto.dart';

@singleton
class GithubApi {
  final Dio _dio;

  GithubApi(this._dio);

  Future<SearchResponseDto> searchRepos(
    String query,
    int page,
    int perPage,
  ) async {
    final response = await _dio.get(
      'search/repositories',
      queryParameters: {'q': query, 'page': page, 'per_page': perPage},
    );
    return SearchResponseDto.fromJson(response.data);
  }

  Future<RepoDto> getRepo(int id) async {
    final response = await _dio.get('repositories/$id');
    return RepoDto.fromJson(response.data);
  }
}
