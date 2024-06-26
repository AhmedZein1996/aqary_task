import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_styles.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final bool isCenter;
  final TextStyle? textStyle;
  final FontWeight? fontWeight;
  final Color? color;
  final int maxLines;
  final TextOverflow textOverflow;
  const DefaultText(
      {super.key,
      required this.text,
      this.fontSize,
      this.isCenter = true,
      this.textStyle,
      this.fontWeight,
      this.color,
      this.maxLines = 3,
      this.textOverflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: isCenter ? TextAlign.center : TextAlign.left,
      overflow: textOverflow,
      maxLines: maxLines,
      style: textStyle ??
          AppStyles.defaultTextStyle.copyWith(
            color: color ?? Colors.black,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontSize: fontSize ?? 14.sp,
          ),
    );
  }
}
