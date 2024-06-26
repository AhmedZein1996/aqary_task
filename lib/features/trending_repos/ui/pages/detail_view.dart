// import 'package:bab_alomda_assessment/core/exports/exports.dart';
// import 'package:bab_alomda_assessment/features/stories/data/model/story_model.dart';
// import 'package:bab_alomda_assessment/features/stories/ui/widgets/detail/landscape_body.dart';
// import 'package:bab_alomda_assessment/features/stories/ui/widgets/detail/portrait_body.dart';
// import 'package:flutter/material.dart';
//
// import '../../data/model/story_model.dart';
// import '../widgets/detail/landscape_body.dart';
// import '../widgets/detail/portrait_body.dart';
//
// class DetailScreen extends StatelessWidget {
//   final TrendingRepoModel storyModel;
//   const DetailScreen({super.key, required this.storyModel});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detail Screen'),
//       ),
//       body: OrientationBuilder(
//           builder: (context, orientation) => orientation == Orientation.portrait
//               ? PortraitBody(storyModel: storyModel)
//               : LandScapeBody(storyModel: storyModel)),
//     );
//   }
// }
