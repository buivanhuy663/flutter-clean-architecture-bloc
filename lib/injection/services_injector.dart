import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './injector.dart';
import '../data/data_sources/http_client/api_client.dart';
import '../data/data_sources/local_storage/share_preference_data_source.dart';
import '../presentation/core/app_lifecycle/app_lifecycle.dart';
import '../presentation/routes/app_router.dart';
import '../utilities/constants/api_constants.dart';

class ServiceInjector {
  static Future<void> register() async {
    // Share Preferences
    final sharedPreferences = await SharedPreferences.getInstance();

    injector.registerLazySingleton<SharePreferenceDataSource>(
      () => SharePreferenceDataSource(sharedPreferences),
    );

    // Http Client
    injector.registerLazySingleton<Dio>(() => Dio());

    injector.registerLazySingleton<ApiClient>(
      () => ApiClient(
        injector.get<Dio>(),
        baseUrl: ApiConstants.baseUrl,
      ),
    );

    // Router
    injector.registerLazySingleton<AppRouter>(
      () => AppRouter(),
    );

    // AppLifecycle
    injector.registerLazySingleton<AppLifecycle>(
      () => AppLifecycle(),
    );
  }
}
