import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';
import 'todos_presenter.dart';

class TodosModule extends BaseModule {
  @override
  void register() {
    injector.registerFactory<TodosPresenter>(
      () => TodosPresenter(
          //
          // TODO:  inject param of presenter in here
          //
          ),
    );
  }
}
