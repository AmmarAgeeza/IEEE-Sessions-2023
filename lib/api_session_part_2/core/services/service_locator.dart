import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../bloc/global_cubit/global_cubit.dart';
import '../database/api/api_consumer.dart';
import '../database/api/dio_consumer.dart';
import '../database/cache/cache_helper.dart';

final sl = GetIt.instance;
Future<void> serviceLocatorInit() async {
  //! Blocs

  //External
  // final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<CacheHelper>(() => CacheHelper());
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton<GlobalCubit>(() => GlobalCubit());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));
  sl.registerLazySingleton(() => LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: true,
      responseHeader: true,
      request: true,
      requestBody: true));
  // sl.registerLazySingleton(
  //     () => AppIntercepters(client: sl(), langLocalDataSource: sl()));
}
