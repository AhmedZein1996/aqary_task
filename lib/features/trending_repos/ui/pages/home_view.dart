import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_task/features/trending_repos/logic/trending_repo/trending_repo_bloc.dart';

import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../widgets/home/home_header.dart';
import '../widgets/home/repos_bloc_builder_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: BlocListener<TrendingRepoBloc, TrendingRepoState>(
        listenWhen: (previous, current) => current is TrendingRepoErrorState,
        listener: (context, state) {
          if (state is TrendingRepoErrorState) {
            Utils.showToast(state.message);
          }
        },
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<TrendingRepoBloc>().add(GetTrendingRepoEvent());
          },
          child: const Column(
            children: [
              HomeHeader(),
              ReposBlocBuilderWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
