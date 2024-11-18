import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/features/activities/data/datasources/mock/activities_repository_mock_datasource.dart';
import 'package:news_app/features/activities/data/models/activity_model.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class ActivitiesRepositoryMockDataSourceImpl implements ActivitiesRepositoryMockDataSource{

  final http.Client client;

  ActivitiesRepositoryMockDataSourceImpl({required this.client});
  
  @override
  Future<List<ActivityModel>> getActivities() async {
    try{
      await Future.delayed(Duration(milliseconds: 500));
      return [
        ActivityModel(
          id: 1, 
          startTime: "08:00", 
          duration: 60, 
          title: "Beach Yoga",
          location: "La Playa de la Rada", 
          availableSpots: 8, 
          price: "9.0",
          labels: ["light"]
        ),
        ActivityModel(
          id: 2, 
          startTime: "09:00", 
          duration: 60, 
          title: "Reformer Pilates",
          location: "Wellness Studio", 
          availableSpots: 3, 
          price: "15.0",
          labels: ["medium", "childcare"]
        ),
        ActivityModel(
          id: 3, 
          startTime: "12:30", 
          duration: 45, 
          title: "5-a-side Football",
          location: "Municipal Sports Center", 
          availableSpots: 0, 
          price: "19.0",
          labels: ["high", "childcare"]
        ),
      ];
    } on SocketException {
      throw NetworkFailure.exception;
    } on InvalidDataFailure{
      rethrow;
    }catch(e){
      await Sentry.captureMessage(
        "getActivitiesList: EXCEPTION: $e BODY: ",
      );
      throw UnknownFailure.exception;
    }
  }
}