import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/h_spacing.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GoalCard extends StatelessWidget {
  final double width;
  const GoalCard({
    super.key,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            offset: Offset(3, 3),
            blurRadius: 6
          )
        ]
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: mqHeigth(context, 2)
      ),
      child: Row(
        children: [
          Container(
            width: width * 0.55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("You're close to your goal!", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                )),
                Text(
                  "Join more sport activities to collect more points",
                  style: TextStyle(
                    fontSize: 16
                  )
                ),
                VSpacing(1.5),
                Row(
                  children: [
                    CustomButton(
                      heigth: mqHeigth(context, 4),
                      onPressed: (){}, 
                      label: "Join now", 
                      width: width * 0.24, 
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    HSpacing(2),
                    CustomButton(
                      heigth: mqHeigth(context, 4),
                      onPressed: (){}, 
                      label: "My points", 
                      width: width * 0.24, 
                      color: Colors.black,
                      fontSize: 18
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: width * 0.25,
            child: Column(
              children: [
                CircularPercentIndicator(
                  radius: width * 0.12,
                  lineWidth: 8.0,
                  percent: 0.7,
                  center: new Text("27", style: TextStyle(
                    fontSize: 30,
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