import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:news_app/features/activities/presentation/widgets/today_activities/activity_card.dart';
import 'package:news_app/features/common/presentation/widgets/empty_view.dart';
import 'package:news_app/features/common/presentation/widgets/error_view.dart';
import 'package:news_app/features/common/presentation/widgets/loading_view.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class ActivitiesList extends StatefulWidget {
  const ActivitiesList({super.key});

  @override
  State<ActivitiesList> createState() => _ActivitiesListState();
}

class _ActivitiesListState extends State<ActivitiesList> {

  final GlobalKey _listViewKey = GlobalKey();
  double? _listViewHeight;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // _getListViewHeight();
      final activitiesBloc = BlocProvider.of<ActivitiesBloc>(context, listen: false);
      activitiesBloc.add(StartGetActivities(
        
      ));
    });
  }

  void _getListViewHeight() {
    final renderBox = _listViewKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      setState(() {
        _listViewHeight = renderBox.size.height;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: mqWidth(context, 5)
      ),
      child: Row(
        children: [
          Container(
            width: mqWidth(context, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VSpacing(0.5),
                Container(
                  width: mqWidth(context, 3),
                  height: mqWidth(context, 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFF09C)
                  ),
                ),
                Container(
                  width: mqWidth(context, 3),
                  height: _listViewHeight != null ? _listViewHeight! - mqWidth(context, 4) : 0,
                  child: Center(
                    child: DottedLine(
                      direction: Axis.vertical,
                      lineThickness: 2,
                      dashLength: 8.0,
                      dashGapLength: 6.0,
                      dashColor: Color(0xffDEE2E6),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: mqWidth(context, 90),
            height: mqHeigth(context, 40),
            child: ListView(
              key: _listViewKey,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: "Today",
                      style: Theme.of(context).textTheme.labelLarge
                    ),
                    TextSpan(
                      text: " / tuesday",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Color(0xff9E9E9E)
                      )
                    )
                  ]
                )),
                VSpacing(1.5),
                BlocConsumer<ActivitiesBloc, ActivitiesState>(
                  listener: (context, activitiesState){
                    if(activitiesState.activitiesList.isNotEmpty){
                      WidgetsBinding.instance.addPostFrameCallback((_){
                        _getListViewHeight();
                      });
                    }
                  },
                  builder: (context, activitiesState){
                    // return ActivitiesListSkeleton();
                    return activitiesState.activitiesListLoading ? 
                    LoadingView(
                      heigth: 30,
                    ) : activitiesState.activitiesListError ? const ErrorView(
                      heigth: 30
                    ) : activitiesState.activitiesList.isEmpty ? const EmptyView(
                      heigth: 30
                    ) :  Column(
                      children: activitiesState.activitiesList.map((e) => ActivityCard(
                        activityEntity: e
                      )).toList()
                    );
                  }, 
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ActivitiesListSkeleton extends StatelessWidget {
  const ActivitiesListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeleton(
      isLoading: true,
      skeleton: Container(
        height: mqHeigth(context, 30),
        child: SkeletonListView(
          itemCount: 3,
          item: SkeletonListTile(
            verticalSpacing: 12,
            titleStyle: SkeletonLineStyle(
              height: 16,
              minLength: 200,
              randomLength: true,
              borderRadius: BorderRadius.circular(12)
            ),
            subtitleStyle: SkeletonLineStyle(
              height: 12,
              maxLength: 200,
              randomLength: true,
              borderRadius: BorderRadius.circular(12)
            ),
            hasSubtitle: true,
          ),
        ),
      ),
      child: Container(),
    );
  }
}