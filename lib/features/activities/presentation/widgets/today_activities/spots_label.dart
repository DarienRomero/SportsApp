import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sports_app/core/custom_icons.dart';
import 'package:sports_app/core/utils.dart';
import 'package:sports_app/features/activities/domain/entities/activity_entity.dart';
import 'package:sports_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:sports_app/features/common/presentation/widgets/h_spacing.dart';

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
        horizontal: mqWidth(context, kIsWeb ? 0.8 : 1.5),
        vertical: mqHeigth(context, kIsWeb ? 0.2 : 0)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kIsWeb ? 2 : 5),
        color: isDarkMode ? Color(0xff6C757D) :Color(0xffF1F1F1)
      ),
      child: Row(
        children: [
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