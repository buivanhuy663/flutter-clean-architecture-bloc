import './splash_presenter.dart';
import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';

class SplashModule extends BaseModule {
  @override
  void register() {
    injector.registerFactory<SplashPresenter>(
      () => SplashPresenter(),
    );
  }
}
