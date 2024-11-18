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
  Future<List<ActivityModel>> getActivities(String category) async {
    try{
      await Future.delayed(Duration(milliseconds: 1000));
      final activities = [
        ActivityModel(
          id: 1, 
          startTime: "08:00", 
          duration: 60, 
          title: "Beach Yoga",
          location: "La Playa de la Rada", 
          availableSpots: 8, 
          price: "9.0",
          labels: ["light"],
          category: "Sports"
        ),
        ActivityModel(
          id: 2, 
          startTime: "09:00", 
          duration: 60, 
          title: "Reformer Pilates",
          location: "Wellness Studio", 
          availableSpots: 3, 
          price: "15.0",
          labels: ["medium", "childcare"],
          category: "Yoga"
        ),
        ActivityModel(
          id: 3, 
          startTime: "12:30", 
          duration: 45, 
          title: "5-a-side Football",
          location: "Municipal Sports Center", 
          availableSpots: 0, 
          price: "19.0",
          labels: ["high", "childcare"],
          category: "Sports"
        ),
        ActivityModel(
          id: 4,
          startTime: "10:00",
          duration: 120,
          title: "Taller de Pintura para Niños",
          location: "Centro Cultural Infantil",
          availableSpots: 15,
          price: "20.0", // Precio por niño
          labels: ["high", "childcare"],
          category: "Kids",
        )
      ];
      if(category == "All"){
        return activities;
      }
      return activities.where((e) => e.category == category).toList();
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