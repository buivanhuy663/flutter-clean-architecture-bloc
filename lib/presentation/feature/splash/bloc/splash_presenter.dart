import 'package:flutter/material.dart';

import './splash_state.dart';
import '../../../core/base_page/base_bloc/base_presenter.dart';

class SplashPresenter extends BasePresenter<SplashState> {
  SplashPresenter({
    @visibleForTesting SplashState? state,
  }) : super(state ?? SplashState.initial());
}
