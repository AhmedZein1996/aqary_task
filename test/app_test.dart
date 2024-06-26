import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_task/features/trending_repos/data/datasources/github_trending_repo_datasource.dart';
import 'package:github_task/features/trending_repos/data/model/trending_repo_model.dart';
import 'package:github_task/features/trending_repos/data/repositories/github_trending_repository.dart';
import 'package:github_task/features/trending_repos/logic/trending_repo/trending_repo_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockGithubTrendingRepository extends Mock
    implements GithubTrendingRepository {}

class MockGithubTrendingDatasource extends Mock
    implements BaseGithubTrendingRepoDatasource {}

void main() {
  late TrendingRepoBloc sut;
  late TrendingRepoEvent event;
  late MockGithubTrendingDatasource mockGithubTrendingDatasource;
  late MockGithubTrendingRepository mockGithubTrendingRepository;
  setUp(() {
    mockGithubTrendingDatasource = MockGithubTrendingDatasource();
    mockGithubTrendingRepository = MockGithubTrendingRepository();
    event = GetTrendingRepoEvent();
    sut = TrendingRepoBloc(mockGithubTrendingRepository);
  });
  final List<TrendingRepoModel> testRepos = [
    const TrendingRepoModel('trending 1', 'description 1',
        {'__typename': 'Language', 'name': 'Shell'}),
    const TrendingRepoModel('trending 2', 'description 2',
        {'__typename': 'Language', 'name': 'Python'}),
    const TrendingRepoModel(
        'trending 3', 'description 3', {'__typename': 'Language', 'name': 'C'}),
  ];
  void arrangeTrendingRepositoryReturns3Reps() {
    when(() => mockGithubTrendingRepository.getTrendingRepo())
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
        sut.add(event);
        verify(() => mockGithubTrendingRepository.getTrendingRepo()).called(1);
        expect(sut.repos.length, 1);
      },
    );
  });
}
