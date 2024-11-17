import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:news_app/features/common/presentation/widgets/custom_text_field.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class WorkshopCardWeb extends StatelessWidget {
  final double width;
  const WorkshopCardWeb({
    super.key,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFBF2C0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: mqHeigth(context, 2)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VSpacing(6),
          Text("Weekly workshops\nfor kids", style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500
          )),
          VSpacing(1),
          Text(
            "Sign up for early access to weekly activities for your kids full of learning and fun!",
            style: TextStyle(
              fontSize: 12,
              height: 1.2
            )
          ),
          VSpacing(2),
          CustomTextField(
            height: mqHeigth(context, 4),
            fillColor: Colors.white,
            hintText: "Learn more", 
            label: "",

            leftPaddingPer: 1,
            style: TextStyle(
              fontSize: 14,
            ),
            contentPadding: 5,
            hintStyle: TextStyle(
              fontSize: 14,
              color: Colors.black,
              letterSpacing: null,
              fontWeight: FontWeight.w400
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CustomSVGIcon(
                sizePer: 3,
                path: CustomIcons.arrowRightCircleIcon
              ),
            ),
          )
        ],
      )
    );
  }
}