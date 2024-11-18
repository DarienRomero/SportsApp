import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:news_app/features/common/presentation/widgets/custom_text_field.dart';

class SearchBoxWeb extends StatelessWidget {
  const SearchBoxWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: "What do you feel like doing", 
      label: "",
      widthPer: 49,
      style: TextStyle(
        fontSize: 12
      ),
      leftPaddingPer: 2,
      hintStyle: TextStyle(
        fontSize: 12,
        color: Color(0xffADB5BD)
      ),
      contentPadding: 10,
      height: mqHeigth(context, 5),
      fillColor: const Color.fromRGBO(255, 255, 255, 1),
      suffixIcon: Padding(
        padding: const EdgeInsets.only(
          top: 5.0,
          bottom: 5.0,
          right: 10.0
        ),
        child: CustomSVGIcon(
          sizePer: 3,
          path: CustomIcons.searchIcon,
        ),
      ),
    );
  }
}