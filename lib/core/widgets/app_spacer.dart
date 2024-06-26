import 'package:flutter/material.dart';



class DefaultVerticalSpacer extends StatelessWidget {
  final double space;
  const DefaultVerticalSpacer({
    super.key, required this.space
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final h = MediaQuery.of(context).size.height;
      // final w = MediaQuery.of(context).size.width;
      return SizedBox(
        height: h * space,
      );
    });
  }
}


class DefaultHorizontalSpacer extends StatelessWidget {
  final double space;
  const DefaultHorizontalSpacer({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      // final h = MediaQuery.of(context).size.height;
      final w = MediaQuery.of(context).size.width;
      return SizedBox(
        width: w * space,
      );
    });
  }
}
