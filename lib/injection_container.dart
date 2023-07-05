import 'package:demo_app/features/people/data/remote_datasources/people_remote_datasource.dart';
import 'package:demo_app/features/people/data/repositories/people_repository_impl.dart';
import 'package:demo_app/features/people/domain/repositories/people_repository.dart';
import 'package:demo_app/features/people/domain/usecases/people_usecase.dart';
import 'package:demo_app/features/people/presentation/bloc/people_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

/// Service locator
final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com"),
    ),
  );

  // remote data source
  sl.registerLazySingleton<PeopleRemoteDataSource>(
      () => PeopleRemoteDataSourceImpl(sl()));

  // repository
  sl.registerLazySingleton<PeopleRepository>(() => PeopleRepositoryImpl(sl()));

  // usecase
  sl.registerLazySingleton<PeopleUsecase>(() => PeopleUsecase(sl()));

  //BLOC
  sl.registerFactory<PeopleBloc>(() => PeopleBloc(peopleUsecase: sl()));
}
