import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        left: mqWidth(context, kIsWeb ? 0 : 5)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                  height: _listViewHeight != null ? _listViewHeight! - mqWidth(context, kIsWeb ? 0 : 4) : 0,
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
            width: mqWidth(context, kIsWeb ? 49 : 90),
            height: mqHeigth(context, kIsWeb ? 60 : 40),
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
                VSpacing(kIsWeb ? 2 : 1.5),
                BlocConsumer<ActivitiesBloc, ActivitiesState>(
                  listener: (context, activitiesState){
                    if(activitiesState.activitiesList.isNotEmpty){
                      WidgetsBinding.instance.addPostFrameCallback((_){
                        _getListViewHeight();
                      });
                    }
                  },
                  builder: (context, activitiesState){
                    return activitiesState.activitiesListLoading ? 
                    LoadingView(
                      heigth: kIsWeb ? 60 :30
                    ) :
                    activitiesState.activitiesListError ? const ErrorView(
                      heigth: kIsWeb ? 60 :30
                    ) : activitiesState.activitiesList.isEmpty ? const EmptyView(
                      heigth: kIsWeb ? 60 : 30
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

/* class ActivitiesListSkeleton extends StatelessWidget {
  final bool loading;
  final Widget child;
  const ActivitiesListSkeleton({
    super.key,
    required this.loading,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Skeleton(
      isLoading: loading,
      skeleton: Container(
        height: mqHeigth(context, kIsWeb ? 60 : 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SkeletonItem(
              child: Container(
                width: mqWidth(context, kIsWeb ? 46 : 85),
                margin: EdgeInsets.only(
                  bottom: mqHeigth(context, 2),
                  right: mqWidth(context, kIsWeb ? 3 : 5)
                ),
                child: SkeletonLine(
                  style: SkeletonLineStyle(
                    borderRadius: BorderRadius.circular(10),
                    height: mqHeigth(context, kIsWeb ? 21 :15),
                  ),
                ),
              ),
            ),
            SkeletonItem(
              child: Container(
                width: mqWidth(context, kIsWeb ? 46 : 85),
                margin: EdgeInsets.only(
                  bottom: mqHeigth(context, 2),
                  right: mqWidth(context, kIsWeb ? 3 : 5)
                ),
                child: SkeletonLine(
                  style: SkeletonLineStyle(
                    borderRadius: BorderRadius.circular(10),
                    height: mqHeigth(context, kIsWeb ? 21 :15),
                  ),
                ),
              ),
            ),
            SkeletonItem(
              child: Container(
                width: mqWidth(context, kIsWeb ? 46 : 85),
                margin: EdgeInsets.only(
                  bottom: mqHeigth(context, 2),
                  right: mqWidth(context, kIsWeb ? 3 : 5)
                ),
                child: SkeletonLine(
                  style: SkeletonLineStyle(
                    borderRadius: BorderRadius.circular(10),
                    height: mqHeigth(context, kIsWeb ? 21 :15),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
      child: child
    );
  }
} */