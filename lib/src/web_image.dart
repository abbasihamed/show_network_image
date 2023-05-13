// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class AppImage extends StatefulWidget {
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
  State<AppImage> createState() => _AppImageState();
}

class _AppImageState extends State<AppImage> {
  @override
  void initState() {
    super.initState();
    changeToHtml(widget.imageSrc);
  }

  changeToHtml(String src) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      src,
      (int id) => html.ImageElement()..src = src,
    );
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: widget.imageSrc);
  }
}
