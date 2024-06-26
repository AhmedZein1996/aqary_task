import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styling/app_colors.dart';
import '../../../../../core/styling/app_spacing.dart';
import '../../../../../core/widgets/default_text.dart';
import '../../../data/model/trending_repo_model.dart';

class RepoWidget extends StatelessWidget {
  final TrendingRepoModel repoModel;
  final Orientation orientation;
  final VoidCallback onTab;
  const RepoWidget(
      {super.key,
      required this.repoModel,
      required this.onTab,
      required this.orientation});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.mediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (repoModel.name != null)
                DefaultText(
                    text: repoModel.name!,
                    isCenter: false,
                    color: AppColors.headlineTextColor,
                    fontSize:
                        orientation == Orientation.portrait ? 14.sp : 22.sp,
                    fontWeight: FontWeight.w500),
              if (repoModel.description != null)
                Column(
                  children: [
                    SizedBox(height: AppSpacing.smallerPadding.h),
                    DefaultText(
                      text: repoModel.description!,
                      isCenter: false,
                      maxLines: 1,
                      color: AppColors.authorTextColor,
                      fontSize:
                          orientation == Orientation.portrait ? 14.sp : 20.sp,
                    ),
                  ],
                ),
              if (repoModel.primaryLanguage != null)
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.smallPadding.h),
                  child: Row(
                    children: [
                      const Text('Primary Language: '),
                      Expanded(
                        child: Text(
                          repoModel.primaryLanguage!.values
                              .map((lang) =>
                                  lang.replaceFirst('Language', '').trim())
                              .where((lang) => lang.isNotEmpty)
                              .join(' - '),
                          style: TextStyle(
                            fontSize: orientation == Orientation.portrait
                                ? 12.sp
                                : 20.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
