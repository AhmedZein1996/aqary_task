// import 'package:bab_alomda_assessment/core/styling/app_spacing.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class TopRoundedContainer extends StatelessWidget {
//   final Orientation orientation;
//   const TopRoundedContainer({
//     Key? key,
//     required this.color,
//     required this.child,
//     required this.orientation,
//   }) : super(key: key);
//
//   final Color color;
//   final Widget child;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: orientation == Orientation.portrait
//           ? EdgeInsets.only(top: AppSpacing.defaultPadding.r)
//           : EdgeInsets.zero,
//       width: double.infinity,
//       decoration: orientation == Orientation.portrait
//           ? BoxDecoration(
//               color: color,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(40.r),
//                 topRight: Radius.circular(40.r),
//               ),
//             )
//           : null,
//       child: SingleChildScrollView(
//           padding: orientation == Orientation.portrait
//               ? EdgeInsets.symmetric(
//                   horizontal: AppSpacing.defaultPadding.w,
//                   vertical: AppSpacing.defaultPadding.h)
//               : EdgeInsets.zero,
//           child: child),
//     );
//   }
// }
