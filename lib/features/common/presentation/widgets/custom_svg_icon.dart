import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/core/utils.dart';

class CustomSVGIcon extends StatelessWidget {
  final String path;
  final double sizePer;
  final Color? color;
  const CustomSVGIcon({
    super.key,
    required this.path,
    this.sizePer = 6,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: mqWidth(context, sizePer),
      height: mqWidth(context, sizePer),
      color: color,
    );
  }
}