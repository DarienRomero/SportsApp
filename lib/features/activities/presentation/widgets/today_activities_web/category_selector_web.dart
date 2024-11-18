import 'package:flutter/material.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:news_app/features/common/presentation/widgets/h_spacing.dart';

class CategorySelectorWeb extends StatelessWidget {
  const CategorySelectorWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mqHeigth(context, 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomButton(
            onPressed: (){

            }, 
            label: "",
            fontSize: 14,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: CustomSVGIcon(path: CustomIcons.slidersIcon, sizePer: 3,),
            ),
            width: mqWidth(context, 5), 
            color: Color(0xffEEE1F5),
            elevation: 0,
          ),
          HSpacing(0.5),
          CustomButton(
            onPressed: (){

            }, 
            label: "All", 
            fontSize: 14,
            width: mqWidth(context, 5), 
            labelColor: Colors.black,
            color: Color(0xffEEE1F5),
            elevation: 0,
          ),
          HSpacing(0.5),
          CustomButton(
            onPressed: (){

            }, 
            label: "Sports", 
            fontSize: 14,
            width: mqWidth(context, 5), 
            labelColor: Colors.black,
            color: Color(0xffEEE1F5),
            elevation: 0,
          ),
          HSpacing(0.5),
          CustomButton(
            onPressed: (){

            }, 
            label: "Food", 
            fontSize: 14,
            width: mqWidth(context, 5), 
            labelColor: Colors.black,
            color: Color(0xffEEE1F5),
            elevation: 0,
          ),
        ],
      ),
    );
  }
}