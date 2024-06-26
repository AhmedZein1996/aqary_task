import 'package:flutter/material.dart';

import '../../../../../core/styling/app_spacing.dart';
import 'drop_down_fllter_list.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.appPadding,
          vertical: AppSpacing.mediumPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [DropDownFilterList()],
      ),
    );
  }
}
