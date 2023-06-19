import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';
import 'home_presenter.dart';

class HomeModule extends BaseModule {
  @override
  void register() {
    injector.registerFactory<HomePresenter>(
      () => HomePresenter(
          //
          // TODO:  inject param of presenter in here
          //
          ),
    );
  }
}
