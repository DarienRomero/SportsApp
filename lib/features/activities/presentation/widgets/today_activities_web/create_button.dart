import 'package:flutter/material.dart';
import 'package:sports_app/core/custom_icons.dart';
import 'package:sports_app/core/utils.dart';
import 'package:sports_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:sports_app/features/common/presentation/widgets/h_spacing.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mqHeigth(context, 5),
      width: mqWidth(context, 13), 
      child: MaterialButton(
        color: Color(0xff35BAF8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        padding: EdgeInsets.zero,
        onPressed: (){
          
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  child: CustomSVGIcon(
                    path: CustomIcons.simplePlusIcon,
                    sizePer: 4,
                  ),
                ),
              ),
              HSpacing(1),
              Text("Create", style: TextStyle(
                fontSize: 16
              ))
            ],
          ),
        ),
      ),
    );
  }
}