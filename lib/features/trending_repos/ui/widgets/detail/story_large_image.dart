// import 'package:bab_alomda_assessment/core/widgets/cached_network_image.dart';
// import 'package:bab_alomda_assessment/features/stories/data/model/story_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../../core/helper/enums/enums.dart';
// import '../../../../../core/widgets/network_image_shimmer.dart';
//
// class StoryLargeImages extends StatelessWidget {
//   final Orientation orientation;
//   const StoryLargeImages({
//     Key? key,
//     required this.storyModel,
//     required this.orientation,
//   }) : super(key: key);
//
//   final StoryModel storyModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImageWidget(
//         imgUrl: storyModel.multimedia == null
//             ? ''
//             : storyModel.multimedia!
//                 .firstWhere(
//                     (media) => media.format == ImageFormat.superJumbo.value)
//                 .imageUrl,
//         height: orientation == Orientation.portrait ? .4.sh : 1.sh,
//         onErrorWidget: kNetworkImageOnErrorWidget);
//   }
// }
