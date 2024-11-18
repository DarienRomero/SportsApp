import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/extensions/extensions.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/domain/entities/label_entity.dart';

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
        horizontal: mqWidth(context, 1.5)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
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