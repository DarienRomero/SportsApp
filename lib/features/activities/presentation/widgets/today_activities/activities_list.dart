import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities/activity_card.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class ActivitiesList extends StatefulWidget {
  const ActivitiesList({super.key});

  @override
  State<ActivitiesList> createState() => _ActivitiesListState();
}

class _ActivitiesListState extends State<ActivitiesList> {

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
      padding: EdgeInsets.symmetric(
        horizontal: mqWidth(context, 5)
      ),
      child: Row(
        children: [
          Container(
            width: mqWidth(context, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VSpacing(0.5),
                Container(
                  width: mqWidth(context, 3),
                  height: mqWidth(context, 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFF09C)
                  ),
                ),
                Container(
                  width: mqWidth(context, 3),
                  height: _listViewHeight != null ? _listViewHeight! - mqWidth(context, 4) : 0,
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
            width: mqWidth(context, 85),
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
                      style: TextStyle(
                        fontSize: 18
                      )
                    ),
                    TextSpan(
                      text: "/ tuesday",
                      style: TextStyle(
                        color: Color(0xff9E9E9E)
                      )
                    )
                  ]
                )),
                VSpacing(1.5),
                ActivityCard(),
                VSpacing(1.5),
                ActivityCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}