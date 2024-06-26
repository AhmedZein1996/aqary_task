// ignore_for_file: constant_identifier_names

class ApiConstants {
  static const trendingRepoQuery = """
{
  search(type: REPOSITORY, query: "is:public sort:updated", first: 50) {
    repos: edges {
      repo: node {
        ... on Repository {
          url
          name
          primaryLanguage{
            name
          }
          description
          createdAt
          updatedAt
        }
      }
    }
    pageInfo {
      endCursor
      hasNextPage
    }
  }
}
""";
}
