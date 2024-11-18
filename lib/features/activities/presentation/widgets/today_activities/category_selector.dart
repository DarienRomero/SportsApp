import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/custom_icons.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:news_app/features/common/presentation/widgets/h_spacing.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivitiesBloc, ActivitiesState>(
      builder: (context, activitiesState){
        return  Container(
          height: mqHeigth(context, kIsWeb ? 5 : 3.5),
          padding: EdgeInsets.only(
            left: mqWidth(context, kIsWeb ? 0 : 5)
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CustomButton(
                onPressed: (){

                }, 
                label: "",
                child: Padding(
                  padding: const EdgeInsets.all(kIsWeb ? 7.0 : 0),
                  child: CustomSVGIcon(path: CustomIcons.slidersIcon, sizePer: kIsWeb ? 3 : 6,),
                ),
                width: mqWidth(context, kIsWeb ? 5 : 18), 
                color:  Color(0xffEEE1F5),
                elevation: 0,
              ),
              HSpacing(kIsWeb ? 0.5 : 2),
              CustomButton(
                onPressed: (){
                  final activitiesBloc = BlocProvider.of<ActivitiesBloc>(context, listen: false);
                  activitiesBloc.add(StartSelectCategory(
                    category: "All"
                  ));
                }, 
                label: "All", 
                fontSize: kIsWeb ? 14 : 16,
                width: mqWidth(context, kIsWeb ? 5 : 16), 
                labelColor: Colors.black,
                color: activitiesState.categorySelected == "All" ? Color(0xffBAA1C8) : Color(0xffEEE1F5),
                elevation: 0,
              ),
              HSpacing(kIsWeb ? 0.5 : 2),
              CustomButton(
                onPressed: (){
                  final activitiesBloc = BlocProvider.of<ActivitiesBloc>(context, listen: false);
                  activitiesBloc.add(StartSelectCategory(
                    category: "Sports"
                  ));
                }, 
                label: "Sports", 
                fontSize: kIsWeb ? 14 : 16,
                width: mqWidth(context, kIsWeb ? 5 : 20), 
                labelColor: Colors.black,
                color: activitiesState.categorySelected == "Sports" ? Color(0xffBAA1C8) : Color(0xffEEE1F5),
                elevation: 0,
              ),
              HSpacing(kIsWeb ? 0.5 : 2),
              CustomButton(
                onPressed: (){
                  final activitiesBloc = BlocProvider.of<ActivitiesBloc>(context, listen: false);
                  activitiesBloc.add(StartSelectCategory(
                    category: "Kids"
                  ));
                }, 
                label: "Kids", 
                fontSize: kIsWeb ? 14 : 16,
                width: mqWidth(context, kIsWeb ? 5 : 20), 
                labelColor: Colors.black,
                color: activitiesState.categorySelected == "Kids" ? Color(0xffBAA1C8) : Color(0xffEEE1F5),
                elevation: 0,
              ),
              HSpacing(kIsWeb ? 0.5 : 2),
              CustomButton(
                onPressed: (){
                  final activitiesBloc = BlocProvider.of<ActivitiesBloc>(context, listen: false);
                  activitiesBloc.add(StartSelectCategory(
                    category: "Creative"
                  ));
                }, 
                label: "Creative", 
                fontSize: kIsWeb ? 14 : 16,
                width: mqWidth(context, kIsWeb ? 5 : 20), 
                labelColor: Colors.black,
                color: activitiesState.categorySelected == "Creative" ? Color(0xffBAA1C8) : Color(0xffEEE1F5),
                elevation: 0,
              ),
            ],
          ),
        );  
      }
    );
  }
}