import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String imageSrc;
  final BoxFit? mobileBoxFit;
  final double? mobileHeight;
  final double? mobileWidth;
  const AppImage({
    super.key,
    required this.imageSrc,
    this.mobileBoxFit,
    this.mobileHeight,
    this.mobileWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageSrc,
      fit: mobileBoxFit,
      height: mobileHeight,
      width: mobileWidth,
    );
  }
}
