// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../core/helper/enums/enums.dart';
// import '../data/model/trending_repo_model.dart';
// import '../data/repositories/github_trending_repository.dart';
//
// part 'trending_repo_state.dart';
//
// class GithubTrendingRepoCubit extends Cubit<GithubTrendingRepoState> {
//   final GithubTrendingRepository _githubRepo;
//   static GithubTrendingRepoCubit get(BuildContext context) => BlocProvider.of(context);
//   GithubTrendingRepoCubit(this._githubRepo) : super(GithubTrendingRepoInitialState());
//   List<TrendingRepoModel> repos = [];
//   List<TrendingRepoModel> searchedRepos = [];
//   final searchController = TextEditingController();
//   final searchFocusNode = FocusNode();
//   bool inSearchMode = false;
//   List<TrendingRepoModel> get viewStories => inSearchMode ? searchedRepos : repos;
//   StoryDisplayStatus storyDisplayStatus = StoryDisplayStatus.list;
//   StoryDisplayStatus get viewStoryDisplayStatus => storyDisplayStatus;
//
//   Future<void> getTopStories() async {
//     emit(GithubTrendingRepoLoadingState());
//     final result = await _githubRepo.getTrendingRepo();
//     result.fold((failure) {
//       emit(GithubTrendingRepoErrorState(failure.message));
//     }, (fetchedStories) {
//       repos = fetchedStories;
//       emit(GithubTrendingRepoSuccessState(repos));
//     });
//   }
//
//   Future<void> getFilterStories(String section) async {
//     emit(GithubTrendingRepoLoadingState());
//
//     final result = await _githubRepo.getFilterStories(section);
//     result.fold((failure) {
//       emit(GithubTrendingRepoErrorState(failure.message));
//     }, (fetchedStories) {
//       repos = fetchedStories;
//       emit(GithubTrendingRepoSuccessState(repos));
//     });
//   }
//
//
//   void searchStories() {
//     if (searchController.text.trim().isNotEmpty) {
//       startSearching();
//     } else {
//       stopSearching();
//     }
//   }
//
//   void startSearching() {
//     final searchText = searchController.text.trim();
//
//     searchedRepos = repos.where((repo) {
//       // Check if any primary language contains the searchText (case insensitive)
//       return repo.primaryLanguage != null &&
//           repo.primaryLanguage!.values.any((lang) =>
//           lang != null && lang.toLowerCase().contains(searchText));
//     }).toList();
//
//     inSearchMode = true;
//     emit(StartSearchState());
//   }
//
//   void stopSearching() {
//     searchFocusNode.unfocus();
//     inSearchMode = false;
//     emit(FinishSearchState());
//   }
// }
