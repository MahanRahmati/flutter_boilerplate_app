import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvgBox extends StatelessWidget {
  const AppSvgBox({
    super.key,
    required this.assetName,
    this.width,
    this.height,
    this.color,
  });

  final String assetName;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(final BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        assetName,
        width: width,
        height: height,
        colorFilter:
            color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      ),
    );
  }
}
