import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wealth_wise/data/source/local/app_prefs.dart';
import 'package:wealth_wise/data/source/remote/api_service.dart';
import 'package:wealth_wise/view_model/bloc_observer.dart';

import '../../data/network/network_info.dart';
import '../../data/repository/auth_repository.dart';

final GetIt getIt = GetIt.instance;

Future<void> initModule() async {
  Bloc.observer = MyBlocObserver();

  /// Shared prefs
  final sharedPrefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(
    () => AppPrefs(sharedPrefs),
  );

  /// api service
  getIt.registerLazySingleton(
    () => ApiService(),
  );

  /// network Info
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      InternetConnectionChecker(),
    ),
  );

  /// Auth repository
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      networkInfo: getIt(),
      apiService: getIt(),
    ),
  );
}
