import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sports_app/core/utils.dart';
import 'package:sports_app/features/common/presentation/widgets/v_spacing.dart';

class SideLine extends StatelessWidget {
  final double? heigth;
  const SideLine({
    super.key,
    required this.heigth
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).scaffoldBackgroundColor == Colors.black;
    return Container(
      width: mqWidth(context, kIsWeb ? 3 : 5),
      child: Column(
        crossAxisAlignment: kIsWeb ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          VSpacing(kIsWeb ? 1: 0.5),
          Container(
            width: mqWidth(context, kIsWeb ? 1: 3),
            height: mqWidth(context, kIsWeb ? 1 :3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFFF09C)
            ),
          ),
          Container(
            width: mqWidth(context, 3),
            height: heigth != null ? heigth! - mqWidth(context, kIsWeb ? 0 : 4) : 0,
            child: Center(
              child: DottedLine(
                direction: Axis.vertical,
                lineThickness: 2,
                dashLength: 8.0,
                dashGapLength: 6.0,
                dashColor: isDarkMode ? Color(0xff6C757D) : Color(0xffDEE2E6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}