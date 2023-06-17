import '_replace_snake_came_presenter.dart';

class ReplacePascalCameModule extends BaseModule {
  @override
  void register() {
    injector.registerFactory<ReplacePascalCamePresenter>(
      () => ReplacePascalCamePresenter(
          //
          // TODO:  inject param of presenter in here
          //
          ),
    );
  }
}
