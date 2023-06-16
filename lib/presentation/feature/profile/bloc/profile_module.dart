import './profile_presenter.dart';
import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';

class ProfileModule extends BaseModule<ProfilePresenter> {
  @override
  void register() {
    injector.registerFactory<ProfilePresenter>(
      () => ProfilePresenter(),
    );
  }
}
