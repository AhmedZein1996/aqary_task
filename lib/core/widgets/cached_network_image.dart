import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'network_image_shimmer.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    Key? key,
    required this.imgUrl,
    required this.onErrorWidget,
    this.fit,
    this.width,
    this.height,
  }) : super(key: key);

  final String imgUrl;
  final Widget onErrorWidget;
  final BoxFit? fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      fit: fit ?? BoxFit.cover,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      placeholder: (context, url) => const NetworkImageShimmer(),
      errorWidget: (context, url, error) => onErrorWidget,
    );
  }
}
