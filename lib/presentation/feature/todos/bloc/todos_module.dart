import './todos_presenter.dart';
import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';

class TodosModule extends BaseModule<TodosPresenter> {
  @override
  void register() {
    injector.registerFactory<TodosPresenter>(
      () => TodosPresenter(),
    );
  }
}
