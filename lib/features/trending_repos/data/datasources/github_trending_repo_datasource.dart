import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../../core/constants/app_api_constants.dart';
import '../../../../core/network/response_model.dart';

abstract class BaseGithubTrendingRepoDatasource {
  Future<ResponseModel> getTrendingRepo();
}

class GithubTrendingRepoDatasource implements BaseGithubTrendingRepoDatasource {
  final GraphQLClient client;

  const GithubTrendingRepoDatasource(this.client);

  @override
  Future<ResponseModel> getTrendingRepo() async {
    QueryResult<dynamic> result = await client.query(
      QueryOptions(
        document: gql(ApiConstants.trendingRepoQuery),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    return ResponseModel.fromJson(result.data!['search']);
  }
}
