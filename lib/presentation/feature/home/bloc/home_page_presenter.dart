import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';

import './home_page_state.dart';
import '../../../core/base_page/base_bloc/base_presenter.dart';

class HomePagePresenter extends BasePresenter<HomePageState> {
  HomePagePresenter({
    @visibleForTesting HomePageState? state,
  }) : super(state ?? HomePageState.initial());

  void handleShowNavigatorBottom(StackRouter router) {
    emit(
      state.copyWith(
        isShowNavigatorBottom: router.isRouteActive('HomeRoute') ||
            router.isRouteActive('TodosRoute') ||
            router.isRouteActive('ProfileRoute'),
      ),
    );
  }

  void showNavigationBottom() {
    emit(
      state.copyWith(
        isShowNavigatorBottom: true,
      ),
    );
  }
}
