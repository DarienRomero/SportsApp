import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/core/usecases/usecases.dart';
import 'package:news_app/features/activities/domain/entities/activity_entity.dart';
import 'package:news_app/features/activities/domain/repositories/activities_repository.dart';

class GetActivitiesUseCase implements UseCase<List<ActivityEntity>, GetActivitiesParams>{
  final ActivitiesRepository activityRepository;

  GetActivitiesUseCase(this.activityRepository);

  @override
  Future<Either<Failure, List<ActivityEntity>>> call(GetActivitiesParams params) async {
    return await activityRepository.getActivities(params);
  }

}

class GetActivitiesParams {
  final String category;

  GetActivitiesParams({
    required this.category
  });
}