// import 'package:bab_alomda_assessment/core/exports/exports.dart';
// import 'package:bab_alomda_assessment/core/helper/navigator/navigator.dart';
// import 'package:bab_alomda_assessment/core/router/app_routes.dart';
// import 'package:bab_alomda_assessment/core/styling/app_spacing.dart';
// import 'package:bab_alomda_assessment/core/styling/app_styles.dart';
// import 'package:bab_alomda_assessment/features/stories/data/model/story_model.dart';
// import 'package:bab_alomda_assessment/features/stories/ui/widgets/detail/see_more.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import 'author_text.dart';
//
// class StoryBody extends StatelessWidget {
//   final Orientation orientation;
//   const StoryBody({
//     Key? key,
//     required this.storyModel,
//     required this.orientation,
//   }) : super(key: key);
//
//   final StoryModel storyModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           storyModel.title,
//           style: AppStyles.defaultTextStyle.copyWith(
//               fontSize: orientation == Orientation.portrait ? 18.sp : 24.sp,
//               fontWeight: FontWeight.bold,
//               color: AppColors.headlineTextColor,
//               fontStyle: FontStyle.italic),
//         ),
//         const SizedBox(height: AppSpacing.smallerPadding),
//         Text(
//           storyModel.description * 6,
//           style: AppStyles.defaultTextStyle.copyWith(
//               color: AppColors.bodyTextColor,
//               fontSize: orientation == Orientation.portrait ? 16.sp : 20.sp),
//         ),
//         const SizedBox(height: AppSpacing.smallerPadding),
//         AuthorText(
//           author: storyModel.author,
//           orientation: orientation,
//         ),
//         const SizedBox(height: AppSpacing.smallPadding),
//         SeeMore(
//           onPressSeeMore: () => AppNavigator.pushNamed(AppRoutes.articleWebView,
//               arguments: storyModel.articleUrl),
//           orientation: orientation,
//         )
//       ],
//     );
//   }
// }
