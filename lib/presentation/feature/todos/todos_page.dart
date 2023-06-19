import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/base_page/base_page.dart';
import 'bloc/todos_module.dart';
import 'bloc/todos_presenter.dart';
import 'bloc/todos_state.dart';
import 'components/example_component.dart';

/// Created by:  buivanhuy663
/// Created at:  2023-06-19
/// Page:        [TodosPage]
/// Module:      [TodosModule]
/// Presenter:   [TodosPresenter]
/// State:       [TodosState]
/// Description:
/// TODO: This is [TodosPage]
@RoutePage()
class TodosPage extends BasePage {
  const TodosPage({Key? key}) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends BasePageState<TodosPage, TodosPresenter> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
        //TODO: (remove) App bar of new page
        title: const Text('TodosPage'),
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
///=> Behavior of the [TodosPage]
///==========================================================================///
extension _TodosPageBehavior on _TodosPageState {
  void _onPressButton() {
    //TODO: (remove) Example of a self-defined method
  }
}
