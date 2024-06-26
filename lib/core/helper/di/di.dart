import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:github_task/features/trending_repos/logic/trending_repo/trending_repo_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../features/trending_repos/data/datasources/github_trending_repo_datasource.dart';
import '../../../features/trending_repos/data/repositories/github_trending_repository.dart';

final getIt = GetIt.instance;

Future initializeDependencies() async {
  // EXTERNAL
  final client = await _GraphQlServices.init();
  getIt.registerLazySingleton<GraphQLClient>(() => client);

  // DATASOURCE
  getIt.registerLazySingleton(() => GithubTrendingRepoDatasource(getIt()));

  // REPOSITORY
  getIt.registerLazySingleton(() => GithubTrendingRepository(getIt()));

  // CUBITS
  getIt.registerFactory(() => TrendingRepoBloc(getIt()));
}

class _GraphQlServices {
  static Future<GraphQLClient> init() async {
    final HttpLink link = HttpLink('https://api.github.com/graphql');
    final AuthLink authLink =
        AuthLink(getToken: () => "Bearer ${dotenv.get("ACCESS_TOKEN")}");
    return GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: authLink.concat(link),
    );
  }
}
