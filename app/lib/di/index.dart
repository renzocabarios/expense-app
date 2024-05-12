import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../core/network.dart';

import '../data/repositories/index.dart';
import '../data/sources/index.dart';
import '../domain/repositories/index.dart';
import '../domain/sources/index.dart';

final getIt = GetIt.I;

void resolveDependencies() {
  getIt.registerLazySingleton<Dio>(
      () => Dio()..interceptors.add(AuthInterceptor()));
  getIt.registerLazySingleton<Network>(() => Network(dio: getIt.get<Dio>()));
  registerSources();
  registerRepositories();
  registerBlocs();
}

void registerRepositories() {
  getIt.registerLazySingleton<ExpenseRepository>(() => ExpenseRepositoryImpl(
        expenseSource: getIt.get<ExpenseSource>(),
      ));
}

void registerSources() {
  getIt.registerLazySingleton<ExpenseSource>(
      () => ExpenseSourceImpl(network: getIt.get<Network>()));
}

void registerBlocs() {
  // getIt.registerFactory<HomeCubit>(() => HomeCubit());

  // getIt.registerFactory<MainCubit>(
  //     () => MainCubit(serviceRepository: getIt.get<ServiceRepository>()));

  // getIt.registerFactory<LoginCubit>(() => LoginCubit(
  //       userRepository: getIt.get<UserRepository>(),
  //     ));

  // getIt.registerFactory<FindProviderCubit>(() => FindProviderCubit(
  //       orderRepository: getIt.get<OrderRepository>(),
  //       serviceRepository: getIt.get<ServiceRepository>(),
  //       streamControllers: getIt.get<StreamControllers>(),
  //       sockets: getIt.get<Sockets>(),
  //     ));

  // getIt.registerFactory<FeedbackCubit>(() => FeedbackCubit());
}
