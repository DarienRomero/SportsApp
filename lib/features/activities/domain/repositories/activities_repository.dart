import 'package:dartz/dartz.dart';
import 'package:sports_app/core/error/failures.dart';
import 'package:sports_app/features/activities/domain/entities/activity_entity.dart';
import 'package:sports_app/features/activities/domain/usecases/get_activities_usecase.dart';

abstract class ActivitiesRepository{
  Future<Either<Failure, List<ActivityEntity>>> getActivities(GetActivitiesParams body);
}