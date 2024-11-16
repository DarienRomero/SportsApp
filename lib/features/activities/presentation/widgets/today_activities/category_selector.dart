import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:news_app/features/common/presentation/widgets/h_spacing.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mqHeigth(context, 4),
      padding: EdgeInsets.only(
        left: mqWidth(context, 5)
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomButton(
            onPressed: (){

            }, 
            label: "",
            child: CustomSVGIcon(path: CustomIcons.slidersIcon),
            width: mqWidth(context, 20), 
            color: Color(0xffEEE1F5),
            elevation: 0,
          ),
          HSpacing(2),
          CustomButton(
            onPressed: (){

            }, 
            label: "All", 
            fontSize: 16,
            width: mqWidth(context, 20), 
            labelColor: Colors.black,
            color: Color(0xffEEE1F5),
            elevation: 0,
          ),
          HSpacing(2),
          CustomButton(
            onPressed: (){

            }, 
            label: "Sports", 
            fontSize: 16,
            width: mqWidth(context, 20), 
            labelColor: Colors.black,
            color: Color(0xffEEE1F5),
            elevation: 0,
          ),
          HSpacing(2),
          CustomButton(
            onPressed: (){

            }, 
            label: "Food", 
            fontSize: 16,
            width: mqWidth(context, 20), 
            labelColor: Colors.black,
            color: Color(0xffEEE1F5),
            elevation: 0,
          ),
        ],
      ),
    );
  }
}