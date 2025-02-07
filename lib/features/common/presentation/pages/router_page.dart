import 'package:flutter/material.dart';
import 'package:sports_app/core/navigation.dart';
import 'package:sports_app/features/activities/presentation/pages/today_activities.dart';

/// A page that redirects to correct page on app inits.
class RouterPage extends StatefulWidget {
  const RouterPage({Key? key}) : super(key: key);

  @override
  State<RouterPage> createState() => _RouterPageState();
}

class _RouterPageState extends State<RouterPage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushAndRemoveUntil(context, materialNavigationRoute(context, TodayActivities()), (route) => false);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}