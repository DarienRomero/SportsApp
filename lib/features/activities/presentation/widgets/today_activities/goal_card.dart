import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/h_spacing.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GoalCard extends StatelessWidget {
  const GoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mqWidth(context, 90),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffBAE6FD)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: mqWidth(context, 5),
        vertical: mqHeigth(context, 2)
      ),
      child: Row(
        children: [
          Container(
            width: mqWidth(context, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("You're close to your goal!", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                )),
                Text(
                  "Join more sport activities to collect more points",
                  style: TextStyle(
                    fontSize: 16
                  )
                ),
                VSpacing(2),
                Row(
                  children: [
                    CustomButton(
                      heigth: mqHeigth(context, 4),
                      onPressed: (){}, 
                      label: "Join now", 
                      width: mqWidth(context, 20), 
                      color: Colors.black,
                      fontSize: 18
                    ),
                    HSpacing(2),
                    CustomButton(
                      heigth: mqHeigth(context, 4),
                      onPressed: (){}, 
                      label: "My points", 
                      width: mqWidth(context, 22), 
                      color: Colors.black,
                      fontSize: 18
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: mqWidth(context, 30),
            child: Column(
              children: [
                CircularPercentIndicator(
                  radius: mqWidth(context, 13),
                  lineWidth: 12.0,
                  percent: 0.7,
                  center: new Text("27", style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600
                  )),
                  progressColor: Color(0xff6ABEF6),
                  backgroundColor: Colors.white,
                  circularStrokeCap: CircularStrokeCap.round
                )
              ],
            ),
          )
        ],
      )
    );
  }
}