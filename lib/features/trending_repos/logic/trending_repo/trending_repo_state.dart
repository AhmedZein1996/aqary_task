part of 'trending_repo_bloc.dart';

@immutable
abstract class TrendingRepoState {}

class TrendingRepoInitialState extends TrendingRepoState {}

class TrendingRepoLoadingState extends TrendingRepoState {}

class TrendingRepoSuccessState extends TrendingRepoState {
  final List<TrendingRepoModel> repos;

  TrendingRepoSuccessState(this.repos);
}

class TrendingRepoErrorState extends TrendingRepoState {
  final String message;

  TrendingRepoErrorState(this.message);
}

class StartSearchState extends TrendingRepoState {}

class FinishSearchState extends TrendingRepoState {}
