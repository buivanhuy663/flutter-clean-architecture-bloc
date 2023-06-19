import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';
import 'profile_presenter.dart';

class ProfileModule extends BaseModule {
  @override
  void register() {
    injector.registerFactory<ProfilePresenter>(
      () => ProfilePresenter(
          //
          // TODO:  inject param of presenter in here
          //
          ),
    );
  }
}
