import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/usecases/usecases.dart';
import 'package:news_app/features/news/domain/entities/article_entity.dart';
import 'package:news_app/features/news/domain/usecases/get_news_usecase.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {

  final GetNewsUseCase getNewsUseCase;

  NewsBloc({
    required this.getNewsUseCase,
  }) : super( const NewsState(
    newsList: [],
    newsListError: false,
    newsListLoading: false
  ) ) {

    on<StartGetNews>((event, emit) async {
      emit(state.copyWith(
        newsListLoading: true,
        newsListError: false,
        newsList: [],
      ));
      final failureOrData = await getNewsUseCase(NoParams());
      failureOrData.fold(
        (failure) => emit(state.copyWith(
          newsListLoading: false,
          newsListError: true,
          newsList: []
        )), 
        (data) => emit(state.copyWith(
          newsListLoading: false,
          newsListError: false,
          newsList: data
        ))
      );
    });
  }
}