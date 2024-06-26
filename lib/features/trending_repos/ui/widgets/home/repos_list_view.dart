import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_task/core/exports/exports.dart';

import '../../../../../core/helper/navigator/navigator.dart';
import '../../../../../core/router/app_routes.dart';
import '../../../../../core/styling/app_spacing.dart';
import '../../../data/model/trending_repo_model.dart';
import 'empty_repo.dart';
import 'repo_widget.dart';

class ReposListView extends StatelessWidget {
  final List<TrendingRepoModel> repos;

  const ReposListView({super.key, required this.repos});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => repos.isEmpty
          ? const EmptyRepo()
          : ListView.separated(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.smallPadding,
                  vertical: AppSpacing.smallPadding),
              itemBuilder: (context, index) => RepoWidget(
                    repoModel: repos[index],
                    onTab: () => AppNavigator.pushNamed(
                        AppRoutes.storiesDetails,
                        arguments: repos[index]),
                    orientation: orientation,
                  ),
              separatorBuilder: (context, index) =>
                  SizedBox(height: AppSpacing.smallerPadding.h),
              itemCount: repos.length),
    );
  }
}
