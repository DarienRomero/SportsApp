import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities/category_selector.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities/goal_card.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/custom_text_field.dart';
import 'package:news_app/features/common/presentation/widgets/scaffold_wrapper.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class TodayActivities extends StatelessWidget {
  const TodayActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: SingleChildScrollView(
        child: Column(
          children: [
            VSpacing(5),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: mqWidth(context, 5)
              ),
              child: Row(
                children: [
                  Text("Tues, Nov 12", style: TextStyle(
                    fontFamily: "SFProDisplay",
                    fontWeight: FontWeight.w500
                  ),),
                  Row(
                    children: [
                      Icon(Icons.notification_add),
                      /* GeneralImage(
                        width: mqWidth(context, 3),
                        height: mqWidth(context, 3),
                        url: "",
                        fromLocal: false,
                      ) */
                    ],
                  )
                ],
              ),
            ),
            VSpacing(1),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: mqWidth(context, 5)
              ),
              child: Row(
                children: [
                  Text("This week in Estepona", style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  )),
                ],
              ),
            ),
            VSpacing(3),
            GoalCard(),
            VSpacing(2),
            CustomTextField(
              hintText: "What do you feel like doing", 
              label: "",
              widthPer: 90,
            ),
            VSpacing(2),
            CategorySelector(),
            VSpacing(3),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: mqWidth(context, 5)
              ),
              child: Row(
                children: [
                  Container(
                    width: mqWidth(context, 5),
                    height: mqHeigth(context, 20),
                  ),
                  Container(
                    width: mqWidth(context, 85),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Container(
                          width: mqWidth(context, 85),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(3, 3),
                                blurRadius: 10
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
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}