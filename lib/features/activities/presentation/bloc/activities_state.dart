part of 'activities_bloc.dart';

@immutable
class ActivitiesState {
  final bool activitiesListLoading;
  final bool activitiesListError;
  final List<ActivityEntity> activitiesList;

  const ActivitiesState({
    required this.activitiesListLoading,
    required this.activitiesListError,
    required this.activitiesList
  });

  ActivitiesState copyWith({
    bool? activitiesListLoading,
    bool? activitiesListError,
    List<ActivityEntity>? activitiesList
  }) => ActivitiesState(
    activitiesListLoading: activitiesListLoading ?? this.activitiesListLoading,
    activitiesListError: activitiesListError ?? this.activitiesListError,
    activitiesList: activitiesList ?? this.activitiesList
  );
}