import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/h_spacing.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mqWidth(context, 85),
      height: mqHeigth(context, 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            offset: Offset(3, 3),
            blurRadius: 6
          )
        ],
        border: Border.all(
          color: Theme.of(context).cardTheme.shadowColor ?? Color(0)
        )
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
                      text: "09:00", style: Theme.of(context).textTheme.labelSmall
                    ),
                    TextSpan(
                      text: " (60 min)",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Color(0xffADB5BD)
                      )
                    )
                  ]
                )),
                VSpacing(1),
                Text("Beach Yoga", style: Theme.of(context).textTheme.displaySmall),
                VSpacing(1),
                Row(
                  children: [
                    Icon(Icons.location_city, color: Color(0xffADB5BD)),
                    HSpacing(1),
                    Text("La Playa de la Rada", style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Color(0xffADB5BD)
                    ))
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("9€", style: Theme.of(context).textTheme.displaySmall),
                VSpacing(2),
                CustomButton(
                  onPressed: (){

                  }, 
                  label: "Join", 
                  labelColor: Theme.of(context).indicatorColor,
                  heigth: mqHeigth(context, 4),
                  width: mqWidth(context, 15), 
                  color: Theme.of(context).filledButtonTheme.style?.backgroundColor?.resolve({})
                ),
                VSpacing(2),
              ],
            ),
          )
        ],
      ),
    );
  }
}