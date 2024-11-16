import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/core/usecases/usecases.dart';
import 'package:news_app/features/news/domain/entities/article_entity.dart';

abstract class NewsRepository{
  Future<Either<Failure, List<ArticleEntity>>> getNewsList(NoParams body);
}