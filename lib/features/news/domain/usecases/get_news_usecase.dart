import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/core/usecases/usecases.dart';
import 'package:news_app/features/news/domain/entities/article_entity.dart';
import 'package:news_app/features/news/domain/repositories/news_repository.dart';

class GetNewsUseCase implements UseCase<List<ArticleEntity>, NoParams>{
  final NewsRepository authRepository;

  GetNewsUseCase(this.authRepository);

  @override
  Future<Either<Failure, List<ArticleEntity>>> call(NoParams params) async {
    return await authRepository.getNewsList(params);
  }

}