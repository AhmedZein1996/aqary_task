import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NetworkImageShimmer extends StatelessWidget {
  const NetworkImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

const kShimmerBaseColor = Color(0xFFE0E0E0);
const kNetworkImageOnErrorWidget = ColoredBox(
  color: kShimmerBaseColor,
  child: SizedBox(
    child: Icon(
      Icons.error_outline,
      color: Colors.red,
    ),
  ),
);
