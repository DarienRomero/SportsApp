part of 'news_bloc.dart';

@immutable
class NewsState {
  final bool newsListLoading;
  final bool newsListError;
  final List<ArticleEntity> newsList;

  const NewsState({
    required this.newsListLoading,
    required this.newsListError,
    required this.newsList
  });

  NewsState copyWith({
    bool? newsListLoading,
    bool? newsListError,
    List<ArticleEntity>? newsList
  }) => NewsState(
    newsListLoading: newsListLoading ?? this.newsListLoading,
    newsListError: newsListError ?? this.newsListError,
    newsList: newsList ?? this.newsList
  );
}