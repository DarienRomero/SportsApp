import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mqWidth(context, 85),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            offset: Offset(3, 3),
            blurRadius: 6
          )
        ]
      ),
      child: Row(
        children: [
          Container(
            width: mqWidth(context, 65),
            padding: EdgeInsets.only(
              left: mqWidth(context, 5),
              top: mqHeigth(context, 2),
              bottom: mqHeigth(context, 2)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: "09:00"
                    ),
                    TextSpan(
                      text: " (60 min)"
                    )
                  ]
                )),
                VSpacing(1),
                Text("Beach Yoga"),
                VSpacing(1),
                Row(
                  children: [
                    Icon(Icons.location_city),
                    Text("La Playa de la Rada")
                  ],
                ),
                VSpacing(1),
                Row(
                  children: [
                    Container(
                      width: mqWidth(context, 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF1F1F1)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.person, color: Color(0xff9E9E9E)),
                          Text("8 sports left", style: TextStyle(
                            color: Color(0xff9E9E9E)
                          ))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: mqWidth(context, 15),
            child: Column(
              children: [
                Text("9€", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                )),
                VSpacing(2),
                CustomButton(
                  onPressed: (){

                  }, 
                  label: "Join", 
                  heigth: mqHeigth(context, 4),
                  width: mqWidth(context, 15), 
                  color: Colors.black
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}