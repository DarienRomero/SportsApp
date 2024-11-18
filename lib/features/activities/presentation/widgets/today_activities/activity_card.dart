import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/domain/entities/activity_entity.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities/activity_label.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities/spots_label.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:news_app/features/common/presentation/widgets/h_spacing.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class ActivityCard extends StatelessWidget {
  final ActivityEntity activityEntity;
  const ActivityCard({
    super.key,
    required this.activityEntity
  });

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: Duration(milliseconds: 600),
      child: Container(
        width: mqWidth(context, kIsWeb ? 46 : 85),
        height: mqHeigth(context, kIsWeb ? 21 :15),
        margin: EdgeInsets.only(
          bottom: mqHeigth(context, 2),
          right: mqWidth(context, kIsWeb ? 3 : 5)
        ),
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
              width: kIsWeb ? (mqWidth(context, 36) - 2) : mqWidth(context, 65),
              padding: EdgeInsets.only(
                left: mqWidth(context, kIsWeb ? 2 : 5),
                top: mqHeigth(context, kIsWeb ? 2 : 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                            text: activityEntity.startTime, style: Theme.of(context).textTheme.labelSmall
                          ),
                          TextSpan(
                            text: " (${activityEntity.duration} min)",
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Color(0xffADB5BD)
                            )
                          )
                        ]
                      )),
                      VSpacing(1),
                      Text(activityEntity.title, style: Theme.of(context).textTheme.displaySmall),
                      VSpacing(1),
                      Row(
                        children: [
                          CustomSVGIcon(path: CustomIcons.mapPinIcon, sizePer: kIsWeb ? 1: 3),
                          HSpacing(1),
                          Text(activityEntity.location, style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Color(0xffADB5BD)
                          ))
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: mqHeigth(context, kIsWeb ? 2 : 1)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: mqWidth(context, kIsWeb ? 30 : 55),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SpotsLabel(
                                  activityEntity: activityEntity,
                                ),
                                HSpacing(kIsWeb ? 0.5 : 2),
                                ...activityEntity.labels.map((labelEntity) => ActivityLabel(
                                  labelEntity: labelEntity
                                )).toList()   
                              ]
                            )
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: mqWidth(context, kIsWeb ? 10 : 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("${activityEntity.price}€", style: Theme.of(context).textTheme.displaySmall),
                  VSpacing(kIsWeb ? 3 : 2),
                  CustomButton(
                    onPressed: (){
      
                    }, 
                    label: "Join", 
                    labelColor: Theme.of(context).indicatorColor,
                    heigth: mqHeigth(context, kIsWeb ? 5 : 4),
                    width: mqWidth(context, kIsWeb ? 5 : 15), 
                    color: Theme.of(context).filledButtonTheme.style?.backgroundColor?.resolve({})
                  ),
                  VSpacing(kIsWeb ? 2 : 1),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}