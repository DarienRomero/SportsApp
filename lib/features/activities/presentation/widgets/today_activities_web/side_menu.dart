import 'package:flutter/material.dart';
import 'package:sports_app/core/custom_icons.dart';
import 'package:sports_app/core/utils.dart';
import 'package:sports_app/features/activities/presentation/widgets/today_activities_web/create_button.dart';
import 'package:sports_app/features/common/presentation/widgets/custom_svg_icon.dart';
import 'package:sports_app/features/common/presentation/widgets/general_image.dart';
import 'package:sports_app/features/common/presentation/widgets/h_spacing.dart';
import 'package:sports_app/features/common/presentation/widgets/v_spacing.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mqWidth(context, 20),
      color: Colors.black,
      height: mqHeigth(context, 100),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: mqHeigth(context, 4)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: "TWN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700
                      )
                    ),
                    TextSpan(
                      text: "SQR",
                      style: TextStyle(
                        color: Color(0xff35BAF8),
                        fontSize: 30,
                        fontWeight: FontWeight.w700
                      )
                    ),
                  ]
                )),
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              left: mqWidth(context, 3)
            ),
            leading: CustomSVGIcon(
              path: CustomIcons.calendarIcon,
              sizePer: 1.5,
              color: Colors.white,
            ),
            title: Text("Activities", style: TextStyle(
              color: Colors.white
            )),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              left: mqWidth(context, 3)
            ),
            leading: CustomSVGIcon(
              path: CustomIcons.mapIcon,
              sizePer: 1.5,
              color: Colors.white,
            ),
            title: Text("Locations", style: TextStyle(
              color: Colors.white
            )),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              left: mqWidth(context, 3)
            ),
            leading: CustomSVGIcon(
              path: CustomIcons.starIcon,
              sizePer: 1.5,
              color: Colors.white,
            ),
            title: Text("Services", style: TextStyle(
              color: Colors.white
            )),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              left: mqWidth(context, 3)
            ),
            leading: CustomSVGIcon(
              path: CustomIcons.usersIcon,
              sizePer: 1.5,
              color: Colors.white,
            ),
            title: Text("Communities", style: TextStyle(
              color: Colors.white
            )),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              left: mqWidth(context, 3)
            ),
            leading: CustomSVGIcon(
              path: CustomIcons.bellIcon,
              sizePer: 1.5,
              color: Colors.white,
            ),
            title: Text("Notifications", style: TextStyle(
              color: Colors.white
            )),
          ),
          VSpacing(2),
          Container(
            padding: EdgeInsets.only(
              left: mqWidth(context, 3)
            ),
            child: Row(
              children: [
                CreateButton()
              ],
            ),
          ),
          VSpacing(4),
          Container(
            padding: EdgeInsets.only(
              left: mqWidth(context, 3)
            ),
            child: Row(
              children: [
                GeneralImage(
                  width: mqWidth(context, 2),
                  height: mqWidth(context, 2),
                  fit: BoxFit.cover,
                  borderRadius: 300,
                  url: "assets/images/girl.jpg",
                  fromLocal: true,
                ),
                HSpacing(2),
                Text("Profile", style: TextStyle(
                  color: Colors.white
                )),
                HSpacing(3),
                CustomSVGIcon(
                  path: CustomIcons.moreVerticalIcon,
                  sizePer: 1.5,
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}