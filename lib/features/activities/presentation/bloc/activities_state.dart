part of 'activities_bloc.dart';

@immutable
class ActivitiesState {
  final bool activitiesListLoading;
  final bool activitiesListError;
  final List<ActivityEntity> activitiesList;
  final String categorySelected;

  const ActivitiesState({
    required this.activitiesListLoading,
    required this.activitiesListError,
    required this.activitiesList,
    required this.categorySelected,
  });

  ActivitiesState copyWith({
    bool? activitiesListLoading,
    bool? activitiesListError,
    List<ActivityEntity>? activitiesList,
    String? categorySelected
  }) => ActivitiesState(
    activitiesListLoading: activitiesListLoading ?? this.activitiesListLoading,
    activitiesListError: activitiesListError ?? this.activitiesListError,
    activitiesList: activitiesList ?? this.activitiesList,
    categorySelected: categorySelected ?? this.categorySelected
  );
}