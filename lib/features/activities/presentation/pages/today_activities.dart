import 'package:flutter/material.dart';
import 'package:sports_app/features/activities/presentation/pages/today_activities_mobile.dart';
import 'package:sports_app/features/activities/presentation/pages/today_activities_web.dart';
import 'package:sports_app/features/activities/presentation/widgets/custom_bottom_navigation_bar.dart';

class TodayActivities extends StatelessWidget {
  const TodayActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Verificar si el ancho es menor a 800px
          bool isSmallScreen = constraints.maxWidth < 800;

          return Center(
            child: isSmallScreen
                ? TodayActivitiesMobile()
                : TodayActivitiesWeb()
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}