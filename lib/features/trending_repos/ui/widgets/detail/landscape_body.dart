// import 'package:bab_alomda_assessment/core/styling/app_spacing.dart';
// import 'package:bab_alomda_assessment/features/stories/data/model/story_model.dart';
// import 'package:bab_alomda_assessment/features/stories/ui/widgets/detail/story_body.dart';
// import 'package:bab_alomda_assessment/features/stories/ui/widgets/detail/story_large_image.dart';
// import 'package:bab_alomda_assessment/features/stories/ui/widgets/detail/top_rounded_container.dart';
// import 'package:flutter/material.dart';
//
// import '../../../../../core/styling/app_colors.dart';
//
// class LandScapeBody extends StatelessWidget {
//   final StoryModel storyModel;
//
//   const LandScapeBody({super.key, required this.storyModel});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Expanded(
//               child: StoryLargeImages(
//                   repoModel: storyModel, orientation: Orientation.landscape)),
//           const SizedBox(width: AppSpacing.defaultPadding),
//           Expanded(
//             child: TopRoundedContainer(
//                 color: AppColors.appWhiteColor,
//                 orientation: Orientation.landscape,
//                 child: StoryBody(
//                   repoModel: storyModel,
//                   orientation: Orientation.landscape,
//                 )),
//           ),
//         ],
//       ),
//     );
//   }
// }
