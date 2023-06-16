import './loading_wrapper_presenter.dart';
import '../../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';

class LoadingWrapperModule extends BaseModule<LoadingWrapperPresenter> {
  @override
  void register() {
    injector.registerFactory<LoadingWrapperPresenter>(
      () => LoadingWrapperPresenter(),
    );
  }
}
