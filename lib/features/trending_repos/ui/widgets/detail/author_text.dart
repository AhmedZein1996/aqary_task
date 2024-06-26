import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styling/app_colors.dart';

class AuthorText extends StatelessWidget {
  final Orientation orientation;
  const AuthorText(
      {super.key, required this.author, required this.orientation});

  final String author;

  @override
  Widget build(BuildContext context) {
    String authorName = author.replaceAll('By ', '');
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'By ',
            style: TextStyle(
              color: AppColors.authorTextColor,
              fontSize: orientation == Orientation.portrait ? 14.sp : 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: authorName,
            style: TextStyle(
              color: AppColors.authorTextColor,
              fontSize: orientation == Orientation.portrait ? 14.sp : 18.sp,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
