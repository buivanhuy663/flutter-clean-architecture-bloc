import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/base_page/base_page.dart';
import 'bloc/profile_module.dart';
import 'bloc/profile_presenter.dart';
import 'bloc/profile_state.dart';
import 'components/example_component.dart';

/// Created by:  buivanhuy663
/// Created at:  2023-06-19
/// Page:        [ProfilePage]
/// Module:      [ProfileModule]
/// Presenter:   [ProfilePresenter]
/// State:       [ProfileState]
/// Description:
/// TODO: This is [ProfilePage]
@RoutePage()
class ProfilePage extends BasePage {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BasePageState<ProfilePage, ProfilePresenter> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
        //TODO: (remove) App bar of new page
        title: const Text('ProfilePage'),
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
///=> Behavior of the [ProfilePage]
///==========================================================================///
extension _ProfilePageBehavior on _ProfilePageState {
  void _onPressButton() {
    //TODO: (remove) Example of a self-defined method
  }
}
