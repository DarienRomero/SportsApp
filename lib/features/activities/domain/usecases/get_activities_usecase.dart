import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/core/usecases/usecases.dart';
import 'package:news_app/features/activities/domain/entities/activity_entity.dart';
import 'package:news_app/features/activities/domain/repositories/activities_repository.dart';

class GetActivitiesUseCase implements UseCase<List<ActivityEntity>, NoParams>{
  final ActivitiesRepository activityRepository;

  GetActivitiesUseCase(this.activityRepository);

  @override
  Future<Either<Failure, List<ActivityEntity>>> call(NoParams params) async {
    return await activityRepository.getActivities(params);
  }

}