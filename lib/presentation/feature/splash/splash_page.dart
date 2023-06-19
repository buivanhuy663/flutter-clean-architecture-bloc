import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/base_page/base_page.dart';
import 'bloc/splash_module.dart';
import 'bloc/splash_presenter.dart';
import 'bloc/splash_state.dart';
import 'components/example_component.dart';

/// Created by:  buivanhuy663
/// Created at:  2023-06-19
/// Page:        [SplashPage]
/// Module:      [SplashModule]
/// Presenter:   [SplashPresenter]
/// State:       [SplashState]
/// Description:
/// TODO: This is [SplashPage]
@RoutePage()
class SplashPage extends BasePage {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends BasePageState<SplashPage, SplashPresenter> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
        //TODO: (remove) App bar of new page
        title: const Text('SplashPage'),
        centerTitle: true,
      );

  @override
  Widget buildBody(BuildContext context) => ExampleComponent(
        presenter: presenter,
        //TODO: (remove) presenter will automatically be initialized
        //after initState() is called. No need to initialize this value
      );

  @override
  void handlerFutureError(Object? error) {
    //TODO: (remove) Example of an overridden method
  }

  @override
  bool get resizeToAvoidBottomInset => true;
}

///==========================================================================///
///=> Behavior of the [SplashPage]
///==========================================================================///
extension _SplashPageBehavior on _SplashPageState {
  void _onPressButton() {
    //TODO: (remove) Example of a self-defined method
  }
}
