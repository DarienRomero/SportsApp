import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/domain/entities/activity_entity.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:news_app/features/common/presentation/widgets/h_spacing.dart';

class SpotsLabel extends StatelessWidget {
  final ActivityEntity activityEntity;
  const SpotsLabel({
    super.key,
    required this.activityEntity,
  });

  @override
  Widget build(BuildContext context) {
    var isDarkMode = Theme.of(context).scaffoldBackgroundColor == Colors.black;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: mqWidth(context, 1.5)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isDarkMode ? Color(0xff6C757D) :Color(0xffF1F1F1)
      ),
      child: Row(
        children: [
          HSpacing(kIsWeb ? 0.5 : 0),
          CustomSVGIcon(
            path: CustomIcons.userIcon, 
            sizePer: kIsWeb ? 1: 3,
            color: isDarkMode ? Color(0xffE9ECEF) : null
          ),
          HSpacing(kIsWeb ? 0.5 : 1),
          Text("${activityEntity.availableSpots} ${activityEntity.availableSpots == 1 ? 'spot' : 'spots'} left", style: TextStyle(
            color: isDarkMode ? Color(0xffE9ECEF) : Color(0xff9E9E9E)
          ))
        ],
      ),
    );
  }
}