// import 'package:bab_alomda_assessment/core/styling/app_spacing.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../../core/styling/app_colors.dart';
//
// class SeeMore extends StatelessWidget {
//   final Orientation orientation;
//   const SeeMore({
//     super.key,
//     required this.onPressSeeMore,
//     required this.orientation,
//   });
//
//   final GestureTapCallback onPressSeeMore;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressSeeMore,
//       child: Row(
//         children: [
//           Text(
//             "See more",
//             style: TextStyle(
//               fontWeight: FontWeight.w600,
//               color: AppColors.appOrangeColor,
//               fontSize: orientation == Orientation.portrait ? 16.sp : 20.sp,
//             ),
//           ),
//           const SizedBox(width: AppSpacing.smallerPadding),
//           Icon(
//             size: orientation == Orientation.portrait ? 14 : 18,
//             Icons.arrow_forward_ios,
//             color: AppColors.appOrangeColor,
//           ),
//         ],
//       ),
//     );
//   }
// }
