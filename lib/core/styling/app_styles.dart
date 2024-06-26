import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle defaultTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 14.sp,
  );

  static final darkFadedBoxDecoration = BoxDecoration(
      border: Border.all(color: const Color(0xff26355C)),
      color: const Color(0xff0D0F2C).withOpacity(0.31),
      borderRadius: BorderRadius.circular(25));

  static BorderRadius getRoundedTopBorderRadius({double value = 35}) {
    final borderRadius = Radius.circular(value);
    return BorderRadius.only(topLeft: borderRadius, topRight: borderRadius);
  }

  static final lightGryBorder = Border.all(color: Colors.blueGrey, width: 0.3);

  static const shrinkIconButtonStyle = ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: MaterialStatePropertyAll(EdgeInsets.zero),
      minimumSize: MaterialStatePropertyAll(Size(0, 0)));
}
