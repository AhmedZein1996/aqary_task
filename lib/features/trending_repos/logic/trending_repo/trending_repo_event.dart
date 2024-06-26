part of 'trending_repo_bloc.dart';

@immutable
abstract class TrendingRepoEvent {}

class GetTrendingRepoEvent extends TrendingRepoEvent {}

class FilterTrendingRepoEvent extends TrendingRepoEvent {
  final String lang;

  FilterTrendingRepoEvent(this.lang);
}
