import 'dart:convert';

import 'package:news_app/features/news/data/models/article_model.dart';


NewsListResponse newsListResponseFromMap(String str) => NewsListResponse.fromMap(json.decode(str));

class NewsListResponse {
  final String status;
  final int totalResults;
  final List<ArticleModel> articles;

  NewsListResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  NewsListResponse copyWith({
    String? status,
    int? totalResults,
    List<ArticleModel>? articles,
  }) => 
  NewsListResponse(
    status: status ?? this.status,
    totalResults: totalResults ?? this.totalResults,
    articles: articles ?? this.articles,
  );

  factory NewsListResponse.fromMap(Map<String, dynamic> json) => NewsListResponse(
    status: json["status"] ?? "",
    totalResults: json["totalResults"] ?? 0,
    articles: json["articles"] != null ? List<ArticleModel>.from(json["articles"].map((x) => ArticleModel.fromMap(x))) : []
  );
}