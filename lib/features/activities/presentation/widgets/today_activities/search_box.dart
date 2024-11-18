import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:news_app/features/common/presentation/widgets/custom_text_field.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: "What do you feel like doing", 
      label: "",
      widthPer: 90,
      height: 50,
      fillColor: Colors.white,
      suffixIcon: Padding(
        padding: EdgeInsets.only(
          top: mqWidth(context, 2),
          bottom: mqWidth(context, 2),
          right: mqWidth(context, 4),
        ),
        child: CustomSVGIcon(
          path: CustomIcons.searchIcon
        ),
      ),
    );
  }
}