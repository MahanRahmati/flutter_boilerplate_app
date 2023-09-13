import 'package:app_constants/app_constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppCachedNetworkImage extends StatelessWidget {
  const AppCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.fill,
    this.borderRadius,
    this.width,
    this.height,
    this.progressIndicatorSize,
  });

  final String imageUrl;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final double? progressIndicatorSize;

  @override
  Widget build(final BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(Dimens.borderRadius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit,
        progressIndicatorBuilder: (
          final BuildContext context,
          final String url,
          final DownloadProgress downloadProgress,
        ) {
          return Center(
            child: SizedBox.square(
              dimension: progressIndicatorSize,
              child: CircularProgressIndicator(
                value: downloadProgress.progress,
              ),
            ),
          );
        },
        errorWidget: (
          final BuildContext context,
          final String url,
          final dynamic error,
        ) {
          return const Icon(Icons.error);
        },
      ),
    );
  }
}
