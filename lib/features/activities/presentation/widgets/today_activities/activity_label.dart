import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sports_app/core/extensions/extensions.dart';
import 'package:sports_app/core/utils.dart';
import 'package:sports_app/features/activities/domain/entities/label_entity.dart';

class ActivityLabel extends StatelessWidget {
  final LabelEntity labelEntity;
  const ActivityLabel({
    super.key,
    required this.labelEntity
  });

  @override
  Widget build(BuildContext context) {
    var isDarkMode = Theme.of(context).scaffoldBackgroundColor == Colors.black;
    return Container(
      margin: EdgeInsets.only(
        right: mqWidth(context, kIsWeb ? 0.5 : 1)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: mqWidth(context, kIsWeb ? 1.2 : 1.5),
        vertical: mqHeigth(context, kIsWeb ? 0.2 : 0)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kIsWeb ? 2 : 5),
        color: isDarkMode ? 
          labelEntity.backgroundColorDark.toColor():
          labelEntity.backgroundColorLight.toColor()
      ),
      child: Row(
        children: [
          Text(labelEntity.label, style: TextStyle(
            color: isDarkMode ? 
            labelEntity.labelColorDark.toColor():
            labelEntity.labelColorLight.toColor(),
            fontWeight: FontWeight.w700
          ),)
        ],
      ),
    );
  }
}