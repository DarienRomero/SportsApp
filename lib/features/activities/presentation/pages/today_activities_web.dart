import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';

class TodayActivitiesWeb extends StatelessWidget {
  const TodayActivitiesWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Container(
            width: mqWidth(context, 20),
            color: Colors.red,
            height: mqHeigth(context, 100),
          ),
          Container(
            width: mqWidth(context, 60),
            color: Colors.green,
            height: mqHeigth(context, 100),
          ),
          Container(
            width: mqWidth(context, 20),
            color: Colors.blue,
            height: mqHeigth(context, 100),
          ),
        ],
      ),
    );
  }
}