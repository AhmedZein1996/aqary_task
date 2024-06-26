import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../../../core/network/error_handler.dart';
import '../../../../core/network/failure.dart';
import '../../../../core/network/response_model.dart';
import '../datasources/github_trending_repo_datasource.dart';
import '../model/trending_repo_model.dart';

class GithubTrendingRepository {
  final GithubTrendingRepoDatasource _githubDS;
  const GithubTrendingRepository(this._githubDS);

  Future<Either<Failure, List<TrendingRepoModel>>> getTrendingRepo() async {
    try {
      final ResponseModel response = await _githubDS.getTrendingRepo();
      final reposJsonList = List.from(response.repos);
      log('$reposJsonList');
      final repos = reposJsonList
          .map((repoJson) => TrendingRepoModel.fromJson(
              Map<String, dynamic>.from(repoJson['repo'])))
          .toList();
      return Right(repos);
    } catch (e) {
      return Left(ErrorHandler(e).failure);
    }
  }
}
