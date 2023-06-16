import 'package:flutter/foundation.dart';

import './loading_wrapper_state.dart';
import '../../../core/base_page/base_bloc/base_presenter.dart';

class LoadingWrapperPresenter extends BasePresenter<LoadingWrapperState> {
  LoadingWrapperPresenter({
    @visibleForTesting LoadingWrapperState? state,
  }) : super(state ?? LoadingWrapperState.initial());

  void showLoading() {
    emit(
      state.copyWith(isShowLoading: true),
    );
  }

  void dismissLoading() {
    emit(
      state.copyWith(isShowLoading: false),
    );
  }
}
