import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_task/core/widgets/failure_widget.dart';
import 'package:github_task/features/trending_repos/logic/trending_repo/trending_repo_bloc.dart';
import 'package:github_task/features/trending_repos/ui/widgets/home/repos_list_view.dart';

import '../../../../../core/widgets/loading_screen.dart';

class ReposBlocBuilderWidget extends StatelessWidget {
  const ReposBlocBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<TrendingRepoBloc, TrendingRepoState>(
        builder: (context, state) {
          if (state is TrendingRepoLoadingState) return const LoadingScreen();
          if (state is TrendingRepoSuccessState) {
            return ReposListView(repos: state.repos);
          }
          if (state is TrendingRepoErrorState) {
            return FailureWidget(
                message: state.message,
                onRetry: () => context
                    .read<TrendingRepoBloc>()
                    .add(GetTrendingRepoEvent()));
          }

          return const FailureWidget(message: 'Something went wrong');
        },
      ),
    );
  }
}
