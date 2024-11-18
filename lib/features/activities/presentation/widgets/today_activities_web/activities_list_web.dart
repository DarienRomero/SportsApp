import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities/activity_card.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities_web/activity_card_web.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class ActivitiesListWeb extends StatefulWidget {
  const ActivitiesListWeb({super.key});

  @override
  State<ActivitiesListWeb> createState() => _ActivitiesListWebState();
}

class _ActivitiesListWebState extends State<ActivitiesListWeb> {

  final GlobalKey _listViewKey = GlobalKey();
  double? _listViewHeight;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _getListViewHeight());
  }

  void _getListViewHeight() {
    final renderBox = _listViewKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      setState(() {
        _listViewHeight = renderBox.size.height;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: mqWidth(context, 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VSpacing(1),
                Container(
                  width: mqWidth(context, 1),
                  height: mqWidth(context, 1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFF09C)
                  ),
                ),
                Container(
                  width: mqWidth(context, 3),
                  height: _listViewHeight != null ? _listViewHeight! : 0,
                  child: Center(
                    child: DottedLine(
                      direction: Axis.vertical,
                      lineThickness: 2,
                      dashLength: 8.0,
                      dashGapLength: 6.0,
                      dashColor: Color(0xffDEE2E6),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: mqWidth(context, 46),
            child: ListView(
              key: _listViewKey,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: "Today",
                      style: Theme.of(context).textTheme.labelLarge
                    ),
                    TextSpan(
                      text: " / tuesday",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Color(0xff9E9E9E)
                      )
                    )
                  ]
                )),
                VSpacing(2),
                ActivityCardWeb(),
                VSpacing(2),
                ActivityCardWeb(),
              ],
            ),
          )
        ],
      ),
    );
  }
}