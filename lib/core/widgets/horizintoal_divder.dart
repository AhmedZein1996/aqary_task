import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  final double height;

  const HorizontalDivider({
    super.key,
    this.height = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: const Color(0xff478690).withOpacity(.34),
    );
  }
}
