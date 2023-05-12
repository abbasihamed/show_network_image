import 'package:flutter/material.dart';
import 'package:show_network_image/src/share.dart';

class ShowNetworkImage extends StatelessWidget {
  final String imageSrc;
  final BoxFit? mobileBoxFit;
  final double? mobileHeight;
  final double? mobileWidth;
  const ShowNetworkImage({
    super.key,
    required this.imageSrc,
    this.mobileBoxFit,
    this.mobileHeight,
    this.mobileWidth,
  });

  @override
  Widget build(BuildContext context) {
    return AppImage(
      imageSrc: imageSrc,
      mobileBoxFit: mobileBoxFit,
      mobileHeight: mobileHeight,
      mobileWidth: mobileWidth,
    );
  }
}
