import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/core/usecases/usecases.dart';
import 'package:news_app/features/activities/data/datasources/mock/activities_repository_mock_datasource.dart';
import 'package:news_app/features/activities/domain/entities/activity_entity.dart';
import 'package:news_app/features/activities/domain/repositories/activities_repository.dart';

class ActivitiesRepositoryImpl implements ActivitiesRepository{

  final ActivitiesRepositoryMockDataSource activitiesRepositoryMockDataSource;

  ActivitiesRepositoryImpl({
    required this.activitiesRepositoryMockDataSource,
  });

  @override
  Future<Either<Failure, List<ActivityEntity>>> getActivities(NoParams body) async{
    try{
      final response = await activitiesRepositoryMockDataSource.getActivities();
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