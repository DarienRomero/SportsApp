import 'package:flutter/material.dart';
import 'package:sports_app/core/custom_icons.dart';
import 'package:sports_app/core/platform_validation.dart';
import 'package:sports_app/core/utils.dart';
import 'package:sports_app/features/common/presentation/widgets/custom_icon_button.dart';
import 'package:sports_app/features/common/presentation/widgets/custom_svg_icon.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late PlatformInfo platformInfo;

  @override
  void initState() {
    super.initState();
    platformInfo = PlatformInfo();
  }

  @override
  Widget build(BuildContext context) {
    var isDarkMode = Theme.of(context).scaffoldBackgroundColor == Colors.black;
    return Container(
      width: mqWidth(context, platformInfo.isWeb ? 0 : 100),
      height: mqHeigth(context, platformInfo.isWeb ? 0 : 10),
      padding: EdgeInsets.symmetric(
        horizontal: mqWidth(context, 7)
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: !isDarkMode ? [
          BoxShadow(
            color: Color(0x1F000000),
            offset: Offset(0, 0),
            blurRadius: 7.6,
            spreadRadius: 0,
          ),
        ] : null
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            size: 11,
            fillColor: Color(0),
            onPressed: (){

            },
            splashColor: Color(0xffA1E1FF),
            icon: CustomSVGIcon(
              path: CustomIcons.calendarIcon,
              color: Theme.of(context).iconTheme.color,
              sizePer: 8,
            )
          ),
          CustomIconButton(
            size: 11,
            fillColor: Color(0),
            onPressed: (){

            },
            splashColor: Color(0xffA1E1FF),
            icon: CustomSVGIcon(
              path: CustomIcons.mapIcon,
              color: Theme.of(context).iconTheme.color,
              sizePer: 8,
            )
          ),
          CustomIconButton(
            size: 12,
            fillColor: isDarkMode ? Color(0xff4FC7FF) : Color(0xffC1EBFF),
            onPressed: (){

            },
            splashColor: Color(0xffA1E1FF),
            icon: CustomSVGIcon(
              path: CustomIcons.plusIcon,
              sizePer: 12,
            )
          ),
          CustomIconButton(
            size: 11,
            fillColor: Color(0),
            onPressed: (){

            },
            splashColor: Color(0xffA1E1FF),
            icon: CustomSVGIcon(
              path: CustomIcons.usersIcon,
              color: Theme.of(context).iconTheme.color,
              sizePer: 8,
            )
          ),
          CustomIconButton(
            size: 11,
            fillColor: Color(0),
            onPressed: (){

            },
            splashColor: Color(0xffA1E1FF),
            icon: CustomSVGIcon(
              path: CustomIcons.starIcon,
              color: Theme.of(context).iconTheme.color,
              sizePer: 7,
            )
          ),
        ],
      ),
    );
  }
}