import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/features/activities/domain/entities/activity_entity.dart';
import 'package:news_app/features/activities/domain/usecases/get_activities_usecase.dart';

abstract class ActivitiesRepository{
  Future<Either<Failure, List<ActivityEntity>>> getActivities(GetActivitiesParams body);
}