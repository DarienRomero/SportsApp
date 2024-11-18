import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/platform_validation.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/custom_icon_button.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';

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
    return Container(
      width: mqWidth(context, platformInfo.isWeb ? 0 : 100),
      height: mqHeigth(context, platformInfo.isWeb ? 0 : 10),
      padding: EdgeInsets.symmetric(
        horizontal: mqWidth(context, 7)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            size: 10,
            fillColor: Color(0),
            onPressed: (){

            },
            splashColor: Color(0xffE9ECEF),
            icon: CustomSVGIcon(
              path: CustomIcons.calendarIcon,
              color: Theme.of(context).iconTheme.color,
            )
          ),
          CustomIconButton(
            size: 10,
            fillColor: Color(0),
            onPressed: (){

            },
            splashColor: Color(0xffE9ECEF),
            icon: CustomSVGIcon(
              path: CustomIcons.mapIcon,
              color: Theme.of(context).iconTheme.color,
            )
          ),
          CustomIconButton(
            size: 12,
            fillColor: Color(0),
            onPressed: (){

            },
            splashColor: Color(0xffE9ECEF),
            icon: CustomSVGIcon(
              path: CustomIcons.plusIcon,
              sizePer: 12,
            )
          ),
          CustomIconButton(
            size: 10,
            fillColor: Color(0),
            onPressed: (){

            },
            splashColor: Color(0xffE9ECEF),
            icon: CustomSVGIcon(
              path: CustomIcons.usersIcon,
              color: Theme.of(context).iconTheme.color,
            )
          ),
          CustomIconButton(
            size: 10,
            fillColor: Color(0),
            onPressed: (){

            },
            splashColor: Color(0xffE9ECEF),
            icon: CustomSVGIcon(
              path: CustomIcons.starIcon,
              color: Theme.of(context).iconTheme.color,
            )
          ),
        ],
      ),
    );
  }
}