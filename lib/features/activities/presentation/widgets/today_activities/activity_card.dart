import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/domain/entities/activity_entity.dart';
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
        width: mqWidth(context, 85),
        height: mqHeigth(context, 15),
        margin: EdgeInsets.only(
          bottom: mqHeigth(context, 2)
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
              width: mqWidth(context, 65),
              padding: EdgeInsets.only(
                left: mqWidth(context, 5),
                top: mqHeigth(context, 1),
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
                          CustomSVGIcon(path: CustomIcons.mapPinIcon, sizePer: 3),
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
                      bottom: mqHeigth(context, 1)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: mqWidth(context, 1.5)
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffF1F1F1)
                          ),
                          child: Row(
                            children: [
                              CustomSVGIcon(path: CustomIcons.userIcon, sizePer: 3),
                              HSpacing(1),
                              Text("${activityEntity.availableSpots} ${activityEntity.availableSpots == 1 ? 'spot' : 'spots'} left", style: TextStyle(
                                color: Color(0xff9E9E9E)
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
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
                  VSpacing(1),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}