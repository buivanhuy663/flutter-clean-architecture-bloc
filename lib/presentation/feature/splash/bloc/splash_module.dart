import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';
import 'splash_presenter.dart';

class SplashModule extends BaseModule {
  @override
  void register() {
    injector.registerFactory<SplashPresenter>(
      () => SplashPresenter(
          //
          // TODO:  inject param of presenter in here
          //
          ),
    );
  }
}
