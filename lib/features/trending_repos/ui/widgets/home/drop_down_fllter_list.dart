import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_task/features/trending_repos/logic/trending_repo/trending_repo_bloc.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/helper/enums/enums.dart';
import '../../../../../core/widgets/default_text.dart';

class DropDownFilterList extends StatelessWidget {
  const DropDownFilterList({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      child: Row(
        children: [
          const Icon(Icons.filter_alt),
          DefaultText(
              text: AppStrings.filter,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500)
        ],
      ),
      itemBuilder: (BuildContext context) =>
          LanguageFilter.values.map((filter) {
        return PopupMenuItem<String>(
          value: filter.value,
          child: Text(filter.value),
        );
      }).toList(),
      onSelected: (String value) {
        context.read<TrendingRepoBloc>().add(FilterTrendingRepoEvent(value));
      },
    );
  }
}
