import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import './bloc/home_page_presenter.dart';
import './components/bottom_navigation.dart';
import '../../core/base_page/base_page.dart';
import '../../routes/app_router.dart';

@RoutePage()
class HomePage extends BasePage {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomePagePresenter> {
  @override
  void onInitState() {
    super.onInitState();
    _addListenerChangeNavigationBottom();
  }

  @override
  Widget buildBody(BuildContext context) => AutoTabsScaffold(
        animationDuration: Duration.zero,
        routes: const [
          ProfileRoute(),
          ProfileRoute(),
        ],
        homeIndex: 0,
        bottomNavigationBuilder: (_, tabsRouter) => BottomNavigation(
          presenter: presenter,
          tabsRouter: tabsRouter,
        ),
      );
}

extension _HomePageBehavior on _HomePageState {
  void _addListenerChangeNavigationBottom() {
    context.router.addListener(
      () => presenter.handleShowNavigatorBottom(context.router),
    );
  }
}
