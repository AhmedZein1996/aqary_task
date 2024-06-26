// import 'package:bab_alomda_assessment/features/stories/data/model/story_model.dart';
// import 'package:bab_alomda_assessment/features/stories/ui/widgets/detail/story_body.dart';
// import 'package:bab_alomda_assessment/features/stories/ui/widgets/detail/story_large_image.dart';
// import 'package:bab_alomda_assessment/features/stories/ui/widgets/detail/top_rounded_container.dart';
// import 'package:flutter/material.dart';
//
// import '../../../../../core/styling/app_colors.dart';
//
// class PortraitBody extends StatelessWidget {
//   final StoryModel storyModel;
//
//   const PortraitBody({super.key, required this.storyModel});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         StoryLargeImages(
//           repoModel: storyModel,
//           orientation: Orientation.portrait,
//         ),
//         Expanded(
//           child: TopRoundedContainer(
//               color: AppColors.appWhiteColor,
//               orientation: Orientation.portrait,
//               child: StoryBody(
//                 repoModel: storyModel,
//                 orientation: Orientation.portrait,
//               )),
//         )
//       ],
//     );
//   }
// }
