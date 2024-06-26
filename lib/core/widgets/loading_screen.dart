import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:github_task/core/helper/extensions/context_extensions.dart';

import '../styling/app_colors.dart';
import 'loading_widget.dart';

class LoadingScreen extends StatelessWidget {
  final Color color;
  const LoadingScreen({super.key, this.color = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        height: context.screenHeight,
        color: AppColors.appBGColor.withOpacity(0.7),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: const LoadingIndicator(),
          ),
        ),
      ),
    );
  }
}
