import 'package:dartz/dartz.dart';
import 'package:sports_app/core/error/failures.dart';
import 'package:sports_app/features/activities/data/datasources/mock/activities_repository_mock_datasource.dart';
import 'package:sports_app/features/activities/domain/entities/activity_entity.dart';
import 'package:sports_app/features/activities/domain/repositories/activities_repository.dart';
import 'package:sports_app/features/activities/domain/usecases/get_activities_usecase.dart';

class ActivitiesRepositoryImpl implements ActivitiesRepository{

  final ActivitiesRepositoryMockDataSource activitiesRepositoryMockDataSource;

  ActivitiesRepositoryImpl({
    required this.activitiesRepositoryMockDataSource,
  });

  @override
  Future<Either<Failure, List<ActivityEntity>>> getActivities(GetActivitiesParams body) async{
    try{
      final response = await activitiesRepositoryMockDataSource.getActivities(body.category);
      return Right(response);
    }on NetworkFailure catch(e){
      return Left(e);
    }on UnknownFailure catch(e){
      return Left(e);
    }catch(_){
      return Left(UnknownFailure.exception);
    }
  }
}