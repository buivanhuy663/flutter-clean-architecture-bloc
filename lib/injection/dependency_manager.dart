import './modules_injector.dart';
import './repositories_injector.dart';
import './services_injector.dart';
import './use_case_injector.dart';

class DependencyManager {
  static Future<void> inject() async {
    // Register all services with get_it (inject before the repositories )
    await ServiceInjector.register();

    // Register all modules of pages with get_it
    await ModulesInjector.register();

    // Register all repositories with get_it
    await RepositoriesInjector.register();

    // Register all use cases with get_it
    await UseCaseInjector.register();
  }
}
