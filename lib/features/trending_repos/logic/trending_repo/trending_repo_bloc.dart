import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/trending_repo_model.dart';
import '../../data/repositories/github_trending_repository.dart';

part 'trending_repo_event.dart';
part 'trending_repo_state.dart';

class TrendingRepoBloc extends Bloc<TrendingRepoEvent, TrendingRepoState> {
  final GithubTrendingRepository _githubRepo;
  TrendingRepoBloc(this._githubRepo) : super(TrendingRepoInitialState()) {
    on<GetTrendingRepoEvent>(_getTrendingRepo);
    on<FilterTrendingRepoEvent>(_filterTrendingRepo);
  }
  List<TrendingRepoModel> repos = [];
  Future<void> _getTrendingRepo(
    GetTrendingRepoEvent event,
    Emitter<TrendingRepoState> emit,
  ) async {
    emit(TrendingRepoLoadingState());
    final result = await _githubRepo.getTrendingRepo();
    result.fold((failure) {
      emit(TrendingRepoErrorState(failure.message));
    }, (fetchedRepos) {
      repos = fetchedRepos;
      emit(TrendingRepoSuccessState(repos));
    });
  }

  void _filterTrendingRepo(
      FilterTrendingRepoEvent event, Emitter<TrendingRepoState> emit) {
    final filteredRepos = repos.where((repo) {
      if (repo.primaryLanguage != null) {
        return repo.primaryLanguage!.values.contains(event.lang);
      }
      return false;
    }).toList();

    emit(TrendingRepoSuccessState(filteredRepos));
  }
}
