import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities/activities_list.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities/category_selector.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities_web/activities_list_web.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities_web/category_selector_web.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities_web/events_card_web.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities_web/goal_card_web.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities_web/search_box_web.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities_web/side_menu.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities_web/workshop_card_web.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:news_app/features/common/presentation/widgets/custom_text_field.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class TodayActivitiesWeb extends StatelessWidget {
  const TodayActivitiesWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          SideMenu(),
          Container(
            width: mqWidth(context, 55),
            padding: EdgeInsets.symmetric(
              horizontal: mqWidth(context, 3)
            ),
            height: mqHeigth(context, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VSpacing(5),
                Text("Tues, Nov 12", style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Color(0xffADB5BD)
                )),
                Text("This week in Estepona", style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 22
                )),
                VSpacing(2),
                SearchBoxWeb(),
                VSpacing(3),
                CategorySelectorWeb(),
                VSpacing(2),
                ActivitiesListWeb()
              ],
            ),
          ),
          Container(
            width: mqWidth(context, 25),
            height: mqHeigth(context, 100),
            child: Column(
              children: [
                VSpacing(5),
                GoalCardWeb(
                  width: mqWidth(context, 25)
                ),
                VSpacing(3),
                WorkshopCardWeb(
                  width: mqWidth(context, 25)
                ),
                VSpacing(3),
                EventsCardWeb(
                  width: mqWidth(context, 25)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}