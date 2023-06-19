import 'package:flutter/foundation.dart';

import '../../../core/base_page/base_bloc/base_presenter.dart';
import 'home_state.dart';

class HomePresenter extends BasePresenter<HomeState> {
  HomePresenter(
      //
      // TODO: define inject param of presenter in here
      //
      {
    @visibleForTesting HomeState? state,
  }) : super(state ?? HomeState.initial());
}
