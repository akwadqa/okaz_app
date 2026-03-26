import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/core/shared_widgets/fade_circle_loading_indicator.dart';

class AppCachedNetworkImage extends StatelessWidget {
  const AppCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      placeholder: (context, url) =>
          Center(child: FadeCircleLoadingIndicator()),
      height: height,
      fadeInCurve: Curves.linear,
      // fadeInDuration: Duration.zero,
      // fadeOutDuration: Duration.zero,
      // placeholderFadeInDuration: Duration.zero,
    );
  }
}
