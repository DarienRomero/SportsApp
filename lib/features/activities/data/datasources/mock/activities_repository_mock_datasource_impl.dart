import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/features/activities/data/datasources/mock/activities_repository_mock_datasource.dart';
import 'package:news_app/features/activities/data/models/activity_model.dart';
import 'package:news_app/features/activities/data/models/label_model.dart';
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
          labels: [
            LabelModel(
              label: "light",
              labelColorLight: "65B5DB",
              backgroundColorLight: "D5F1FF",
              labelColorDark: "D5F1FF",
              backgroundColorDark: "65B5DB"
            )
          ],
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
          labels: [
            LabelModel(
              label: "medium",
              labelColorLight: "C9A4F2",
              backgroundColorLight: "F3E8FF",
              labelColorDark: "F3E8FF",
              backgroundColorDark: "C9A4F2"
            ),
            LabelModel(
              label: "childcare",
              labelColorLight: "8AB58A",
              backgroundColorLight: "D8F7DF",
              labelColorDark: "D8F7DF",
              backgroundColorDark: "8AB58A"
            ),
          ],
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
          labels: [
            LabelModel(
              label: "high", 
              labelColorLight: "DC974F", 
              backgroundColorLight: "FFEAD1",
              labelColorDark: "FFEAD1",
              backgroundColorDark: "DC974F"
            ),
            LabelModel(
              label: "childcare",
              labelColorLight: "8AB58A",
              backgroundColorLight: "D8F7DF",
              labelColorDark: "D8F7DF",
              backgroundColorDark: "8AB58A"
            ),
          ],
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
          labels: [
            LabelModel(
              label: "high", 
              labelColorLight: "DC974F", 
              backgroundColorLight: "FFEAD1",
              labelColorDark: "FFEAD1",
              backgroundColorDark: "DC974F"
            ),
            LabelModel(
              label: "childcare",
              labelColorLight: "8AB58A",
              backgroundColorLight: "D8F7DF",
              labelColorDark: "D8F7DF",
              backgroundColorDark: "8AB58A"
            ),
          ],
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