import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/usecases/usecases.dart';
import 'package:news_app/features/activities/domain/entities/activity_entity.dart';
import 'package:news_app/features/activities/domain/usecases/get_activities_usecase.dart';

part 'activities_event.dart';
part 'activities_state.dart';

class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {

  final GetActivitiesUseCase getActivitiesUseCase;

  ActivitiesBloc({
    required this.getActivitiesUseCase,
  }) : super( const ActivitiesState(
    activitiesList: [],
    activitiesListError: false,
    activitiesListLoading: false
  ) ) {

    on<StartGetActivities>((event, emit) async {
      emit(state.copyWith(
        activitiesListLoading: true,
        activitiesListError: false,
        activitiesList: [],
      ));
      final failureOrData = await getActivitiesUseCase(NoParams());
      failureOrData.fold(
        (failure) => emit(state.copyWith(
          activitiesListLoading: false,
          activitiesListError: true,
          activitiesList: []
        )), 
        (data) => emit(state.copyWith(
          activitiesListLoading: false,
          activitiesListError: false,
          activitiesList: data
        ))
      );
    });
  }
}