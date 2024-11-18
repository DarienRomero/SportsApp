part of 'activities_bloc.dart';
@immutable
abstract class ActivitiesEvent {
  
}
class StartGetActivities extends ActivitiesEvent {
  StartGetActivities();
}

class StartSelectCategory extends ActivitiesEvent {
  final String category;
  StartSelectCategory({
    required this.category
  });
}