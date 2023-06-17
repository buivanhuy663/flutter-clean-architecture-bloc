import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'bloc/_replace_snake_came_module.dart';
import 'bloc/_replace_snake_came_presenter.dart';
import 'bloc/_replace_snake_came_state.dart';
import 'components/example_component.dart';

/// Create at:   ${formattedDate}
/// Page:        [ReplacePascalCamePage]
/// Module:      [ReplacePascalCameModule]
/// Presenter:   [ReplacePascalCamePresenter]
/// State:       [ReplacePascalCameState]
/// Description:
/// TODO: This is [ReplacePascalCamePage]
@RoutePage()
class ReplacePascalCamePage extends BasePage {
  const ReplacePascalCamePage({Key? key}) : super(key: key);

  @override
  State<ReplacePascalCamePage> createState() => 
  _ReplacePascalCamePageState();
}

class _ReplacePascalCamePageState
    extends BasePageState<ReplacePascalCamePage, 
    ReplacePascalCamePresenter> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
        //TODO: (remove) App bar of new page
        title: const Text('ReplacePascalCamePage'),
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
///=> Behavior of the [ReplacePascalCamePage]
///==========================================================================///
extension _ReplacePascalCamePageBehavior on 
_ReplacePascalCamePageState {
  void _onPressButton() {
    //TODO: (remove) Example of a self-defined method
  }
}
