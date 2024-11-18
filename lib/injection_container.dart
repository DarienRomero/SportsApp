import 'package:get_it/get_it.dart';
import 'package:sports_app/features/activities/data/datasources/mock/activities_repository_mock_datasource.dart';
import 'package:sports_app/features/activities/data/datasources/mock/activities_repository_mock_datasource_impl.dart';
import 'package:sports_app/features/activities/data/repositories/activities_repository_impl.dart';
import 'package:sports_app/features/activities/domain/repositories/activities_repository.dart';
import 'package:sports_app/features/activities/domain/usecases/get_activities_usecase.dart';
import 'package:sports_app/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:http/http.dart' as http;

final serviceLocator = GetIt.instance;

Future<void> initializeServiceLocator() async {

  serviceLocator.registerLazySingleton(() => http.Client());
  //ACTIVITIES_BLOC

  serviceLocator.registerLazySingleton(() => GetActivitiesUseCase(serviceLocator()));

  serviceLocator.registerFactory(
    () => ActivitiesBloc(
      getActivitiesUseCase: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<ActivitiesRepository>(
    () => ActivitiesRepositoryImpl(
      activitiesRepositoryMockDataSource: serviceLocator(),
    ),
  );

  //* data sources
  serviceLocator.registerLazySingleton<ActivitiesRepositoryMockDataSource>(
    () => ActivitiesRepositoryMockDataSourceImpl(
      client: serviceLocator(),
    ),
  );
}