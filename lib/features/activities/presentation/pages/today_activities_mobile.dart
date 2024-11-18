
import 'package:flutter/material.dart';
import 'package:sports_app/core/custom_icons.dart';
import 'package:sports_app/core/platform_validation.dart';
import 'package:sports_app/core/utils.dart';
import 'package:sports_app/features/activities/presentation/widgets/today_activities/activities_list.dart';
import 'package:sports_app/features/activities/presentation/widgets/today_activities/category_selector.dart';
import 'package:sports_app/features/activities/presentation/widgets/today_activities/goal_card.dart';
import 'package:sports_app/features/activities/presentation/widgets/today_activities/search_box.dart';
import 'package:sports_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:sports_app/features/common/presentation/widgets/general_image.dart';
import 'package:sports_app/features/common/presentation/widgets/h_spacing.dart';
import 'package:sports_app/features/common/presentation/widgets/v_spacing.dart';

class TodayActivitiesMobile extends StatefulWidget {

  const TodayActivitiesMobile({super.key});

  @override
  State<TodayActivitiesMobile> createState() => _TodayActivitiesMobileState();
}

class _TodayActivitiesMobileState extends State<TodayActivitiesMobile> {
  late ScrollController scrollController; 
  late PlatformInfo platformInfo;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    platformInfo = PlatformInfo();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          VSpacing(platformInfo.isIOS ? 7 : 5),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: mqWidth(context, 5)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tues, Nov 12", style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Color(0xffADB5BD)
                )),
                Row(
                  children: [
                    CustomSVGIcon(
                      path: CustomIcons.bellIcon,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    HSpacing(2),
                    GeneralImage(
                      width: mqWidth(context, 6),
                      height: mqWidth(context, 6),
                      fit: BoxFit.cover,
                      borderRadius: 300,
                      url: "assets/images/girl.jpg",
                      fromLocal: true,
                    )
                  ],
                )
              ],
            ),
          ),
          VSpacing(0.5),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: mqWidth(context, 5)
            ),
            child: Row(
              children: [
                Text("This week in Estepona", style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
          ),
          VSpacing(2),
          GoalCard(
            width: mqWidth(context, 100),
          ),
          VSpacing(2),
          SearchBox(),
          VSpacing(2),
          CategorySelector(),
          VSpacing(2.5),
          ActivitiesList()
        ],
      ),
    );
  }
}