import 'package:get_it/get_it.dart';
import 'package:news_app/features/news/data/datasources/news_repository_remote_datasource.dart';
import 'package:news_app/features/news/data/datasources/news_repository_remote_datasource_impl.dart';
import 'package:news_app/features/news/data/repositories/news_repository_impl.dart';
import 'package:news_app/features/news/domain/repositories/news_repository.dart';
import 'package:news_app/features/news/domain/usecases/get_news_usecase.dart';
import 'package:news_app/features/news/presentation/bloc/news_bloc.dart';
import 'package:http/http.dart' as http;

final serviceLocator = GetIt.instance;

Future<void> initializeServiceLocator() async {

  serviceLocator.registerLazySingleton(() => http.Client());
  //NEWS_BLOC

  serviceLocator.registerLazySingleton(() => GetNewsUseCase(serviceLocator()));

  serviceLocator.registerFactory(
    () => NewsBloc(
      getNewsUseCase: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImpl(
      newsRepositoryRemoteDataSource: serviceLocator(),
    ),
  );

  //* data sources
  serviceLocator.registerLazySingleton<NewsRepositoryRemoteDataSource>(
    () => NewsRepositoryRemoteDataSourceImpl(
      client: serviceLocator(),
    ),
  );
}