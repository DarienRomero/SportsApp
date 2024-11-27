import 'package:flutter/material.dart';
import 'package:sports_app/core/utils.dart';
import 'package:sports_app/features/common/presentation/widgets/common_button.dart';
import 'package:sports_app/features/common/presentation/widgets/h_spacing.dart';
import 'package:sports_app/features/common/presentation/widgets/v_spacing.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GoalCardWeb extends StatelessWidget {
  final double width;
  const GoalCardWeb({
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
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: mqHeigth(context, 2)
      ),
      child: Row(
        children: [
          Container(
            width: width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("You're close to your goal!", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )),
                Row(
                  children: [
                    Container(
                      width: width * 0.55,
                      child: Column(
                        children: [
                          VSpacing(2),
                          Text(
                            "Join more sport activities to collect more points",
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.2
                            )
                          ),
                          VSpacing(2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomButton(
                                heigth: mqHeigth(context, 4),
                                onPressed: (){}, 
                                label: "Join now", 
                                width: width * 0.24, 
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              HSpacing(0.5),
                              CustomButton(
                                heigth: mqHeigth(context, 4),
                                onPressed: (){}, 
                                label: "My points", 
                                width: width * 0.24, 
                                color: Colors.black,
                                fontSize: 12
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    CircularPercentIndicator(
                      radius: width * 0.12,
                      lineWidth: 7.0,
                      percent: 0.7,
                      center: new Text("27", style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600
                      )),
                      progressColor: Color(0xff6ABEF6),
                      backgroundColor: Colors.white,
                      circularStrokeCap: CircularStrokeCap.round
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}