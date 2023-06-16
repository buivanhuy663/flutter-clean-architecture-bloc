import '../presentation/components/loading_wrapper/bloc/loading_wrapper_module.dart';
import '../presentation/feature/home/bloc/home_page_module.dart';
import '../presentation/feature/profile/bloc/profile_module.dart';
import '../presentation/feature/splash/bloc/splash_module.dart';
import '../presentation/feature/todos/bloc/todos_module.dart';

class ModulesInjector {
  static Future<void> register() async {
    // Module loading progress
    LoadingWrapperModule().register();

    // Module splash page
    SplashModule().register();

    // Module home page
    HomePageModule().register();

    // Module todo page
    TodosModule().register();

    // Module profile page
    ProfileModule().register();
  }
}
