import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/core/usecases/usecases.dart';
import 'package:news_app/features/news/data/datasources/news_repository_remote_datasource.dart';
import 'package:news_app/features/news/domain/entities/article_entity.dart';
import 'package:news_app/features/news/domain/repositories/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository{

  final NewsRepositoryRemoteDataSource newsRepositoryRemoteDataSource;

  NewsRepositoryImpl({
    required this.newsRepositoryRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<ArticleEntity>>> getNewsList(NoParams body) async{
    try{
      final response = await newsRepositoryRemoteDataSource.getNewsList();
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