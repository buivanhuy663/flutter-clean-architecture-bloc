import './home_page_presenter.dart';
import '../../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';

class HomePageModule extends BaseModule<HomePagePresenter> {
  @override
  void register() {
    injector.registerLazySingleton<HomePagePresenter>(
      () => HomePagePresenter(),
    );
  }
}
