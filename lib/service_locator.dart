import 'package:crypto_app/core/api/dio_consumer.dart';
import 'package:crypto_app/features/home/data/repositories/coin_repo.dart';
import 'package:crypto_app/features/home/data/repositories/coin_repo_impl.dart';
import 'package:crypto_app/features/home/presentation/cubit/coin_market_cubit.dart';
import 'package:crypto_app/features/select_coin.dart/data/repositories/chart_repo.dart';
import 'package:crypto_app/features/select_coin.dart/data/repositories/chart_repo_impl.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/cubit/chart_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

class ServiceLocator {
  Future<void> setupServiceLocator() async {
    await _setupForExternal();
    _setupForCore();
    _setupForRepos();
    _setupForCubits();
  }

  Future<void> _setupForExternal() async {
    serviceLocator.registerLazySingleton<Dio>(() => Dio());
  }

  void _setupForCore() {
    serviceLocator.registerLazySingleton<DioConsumer>(
      () => DioConsumer(dio: serviceLocator.get<Dio>()),
    );
  }

  void _setupForRepos() {
    serviceLocator.registerLazySingleton<CoinRepo>(() => CoinRepoImpl());
    serviceLocator.registerLazySingleton<ChartRepo>(() => ChartRepoImpl());
  }

  void _setupForCubits() {
    serviceLocator.registerFactory<CoinCubit>(
        () => CoinCubit(coinRepo: serviceLocator.get<CoinRepo>()));

    serviceLocator.registerFactory<ChartCubit>(
      () => ChartCubit(
        chartRepo: serviceLocator.get<ChartRepo>(),
      ),
    );
  }
}
