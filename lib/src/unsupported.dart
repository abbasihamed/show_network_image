import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String imageSrc;
  final BoxFit? mobileBoxFit;
  final double? mobileHeight;
  final double? mobileWidth;
  const AppImage({
    Key? key,
    required this.imageSrc,
    this.mobileBoxFit,
    this.mobileHeight,
    this.mobileWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw 'Platform not supported';
  }
}
