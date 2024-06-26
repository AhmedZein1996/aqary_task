import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_task/features/trending_repos/data/model/trending_repo_model.dart';
import 'package:github_task/features/trending_repos/data/repositories/github_trending_repository.dart';
import 'package:github_task/features/trending_repos/logic/trending_repo/trending_repo_bloc.dart';
import 'package:mocktail/mocktail.dart';

// Mock repository class for testing
class MockGithubTrendingRepository extends Mock
    implements GithubTrendingRepository {}

void main() {
  group('TrendingRepoBloc', () {
    late TrendingRepoBloc sut;
    late MockGithubTrendingRepository mockGithubTrendingRepository;

    setUp(() {
      mockGithubTrendingRepository = MockGithubTrendingRepository();
      sut = TrendingRepoBloc(mockGithubTrendingRepository);
    });

    tearDown(() {
      sut.close();
    });

    test(
      'gets trending repos',
      () async {
        // Arrange
        final event = GetTrendingRepoEvent();
        final List<TrendingRepoModel> repos = [
          const TrendingRepoModel('trending 1', 'description 1',
              {'__typename': 'Language', 'name': 'Shell'}),
          const TrendingRepoModel('trending 2', 'description 2',
              {'__typename': 'Language', 'name': 'Python'}),
          const TrendingRepoModel('trending 3', 'description 3',
              {'__typename': 'Language', 'name': 'C'}),
        ];
        when(() => mockGithubTrendingRepository.getTrendingRepo())
            .thenAnswer((_) async => Right(repos));

        // Act
        sut.add(event);

        // Assert
        await expectLater(
          sut.stream,
          emitsInOrder([
            isA<TrendingRepoLoadingState>(),
            isA<TrendingRepoSuccessState>(),
          ]),
        );

        expect((sut.state as TrendingRepoSuccessState).repos.length,
            3); // Adjust this expectation based on your test scenario
        verify(() => mockGithubTrendingRepository.getTrendingRepo()).called(1);
      },
    );
  });
}
