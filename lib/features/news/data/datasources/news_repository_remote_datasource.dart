import 'package:news_app/features/news/data/models/article_model.dart';

abstract class NewsRepositoryRemoteDataSource {
  Future<List<ArticleModel>> getNewsList();
}