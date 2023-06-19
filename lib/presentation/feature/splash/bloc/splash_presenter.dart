import 'package:flutter/foundation.dart';

import '../../../core/base_page/base_bloc/base_presenter.dart';
import 'splash_state.dart';

class SplashPresenter extends BasePresenter<SplashState> {
  SplashPresenter(
      //
      // TODO: define inject param of presenter in here
      //
      {
    @visibleForTesting SplashState? state,
  }) : super(state ?? SplashState.initial());
}
