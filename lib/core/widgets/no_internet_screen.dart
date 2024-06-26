import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_assets.dart';
import '../constants/app_strings.dart';
import '../helper/navigator/navigator.dart';
import '../styling/app_spacing.dart';
import 'default_text.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: AppSpacing.defaultPadding.w * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              AppAssets.noConnection,
              width: 1.sw,
              height: .4.sh,
              fit: BoxFit.contain,
            ),
            SizedBox(height: AppSpacing.defaultPadding.h),
            DefaultText(
              text: AppStrings.noConnection,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
            ),
            const SizedBox(height: AppSpacing.defaultSpacingBetweenElements),
            OutlinedButton(
              onPressed: () async {
                final connectivity = await Connectivity().checkConnectivity();
                if (!connectivity.contains(ConnectivityResult.none)) {
                  AppNavigator.pop();
                }
              },
              child: DefaultText(text: AppStrings.tryAgain, fontSize: 13.sp),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
