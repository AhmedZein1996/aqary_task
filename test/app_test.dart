import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_task/features/trending_repos/data/datasources/github_trending_repo_datasource.dart';
import 'package:github_task/features/trending_repos/data/model/trending_repo_model.dart';
import 'package:github_task/features/trending_repos/data/repositories/github_trending_repository.dart';
import 'package:github_task/features/trending_repos/logic/trending_repo/trending_repo_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockNewYorkTimesStoriesRepository extends Mock
    implements GithubTrendingRepository {}

class MockNewYorkTimesStoriesDatasource extends Mock
    implements BaseGithubTrendingRepoDatasource {}

void main() {
  late TrendingRepoBloc sut;
  late TrendingRepoEvent event;
  late MockNewYorkTimesStoriesDatasource mockNewYorkTimesStoriesDatasource;
  late MockNewYorkTimesStoriesRepository mockNewYorkTimesStoriesRepository;
  setUp(() {
    mockNewYorkTimesStoriesDatasource = MockNewYorkTimesStoriesDatasource();
    mockNewYorkTimesStoriesRepository = MockNewYorkTimesStoriesRepository();
    event = GetTrendingRepoEvent();
    sut = TrendingRepoBloc(mockNewYorkTimesStoriesRepository);
  });
  final List<TrendingRepoModel> testRepos = [
    const TrendingRepoModel('trending 1', 'description 1',
        {'__typename': 'Language', 'name': 'Shell'})
  ];
  void arrangeNewYorkTimesStoriesRepositoryReturns3Stories() {
    when(() => mockNewYorkTimesStoriesRepository.getTrendingRepo())
        .thenAnswer((_) async => Right(testRepos));
  }

  test(
    'initial values are correct',
    () {
      expect(sut.repos, []);
      expect(sut.state.runtimeType, TrendingRepoInitialState);
    },
  );

  // Get Top Stories And Filter Stories Test

  group('getRepos', () {
    test(
      'gets trending repos',
      () async {
        arrangeNewYorkTimesStoriesRepositoryReturns3Stories();
        sut.add(event);
        verify(() => mockNewYorkTimesStoriesRepository.getTrendingRepo())
            .called(1);
        expect(sut.repos.length, 1);
      },
    );
  });
}
