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
    return Container(
      margin: EdgeInsets.only(
        right: mqWidth(context, 1)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: mqWidth(context, 1.5)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: labelEntity.backgroundColor.toColor()
      ),
      child: Row(
        children: [
          Text(labelEntity.label, style: TextStyle(
            color: labelEntity.labelColor.toColor()
          ))
        ],
      ),
    );
  }
}