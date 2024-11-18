import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sports_app/core/custom_icons.dart';
import 'package:sports_app/core/utils.dart';
import 'package:sports_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:sports_app/features/common/presentation/widgets/custom_text_field.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    var isDarkMode = Theme.of(context).scaffoldBackgroundColor == Colors.black;
    return CustomTextField(
      hintText: "What do you feel like doing", 
      label: "",
      widthPer: kIsWeb ? 49 : 90,
      height: kIsWeb ? mqHeigth(context, 5) : 50,
      style: kIsWeb ? TextStyle(
        fontSize: 12
      ) : null,
      leftPaddingPer: kIsWeb ? 1.5 : 5,
      hintStyle: kIsWeb ? TextStyle(
        fontSize: 12,
        color: isDarkMode ? Color(0xff6C757D) : Color(0xffADB5BD)
      ) : null,
      contentPadding: kIsWeb ? 10 : 15,
      fillColor: Colors.white,
      suffixIcon: Padding(
        padding: EdgeInsets.only(
          top: kIsWeb ? 5.0 : mqWidth(context, 2),
          bottom: kIsWeb ? 5.0 : mqWidth(context, 2),
          right: kIsWeb? 10 : mqWidth(context, 4),
        ),
        child: CustomSVGIcon(
          path: CustomIcons.searchIcon,
          sizePer: kIsWeb ? 3 : 6,
          color: isDarkMode ? Color(0xff6C757D) : null
        ),
      ),
    );
  }
}