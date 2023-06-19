import 'package:flutter/foundation.dart';

import '../../../core/base_page/base_bloc/base_presenter.dart';
import 'profile_state.dart';

class ProfilePresenter extends BasePresenter<ProfileState> {
  ProfilePresenter(
      //
      // TODO: define inject param of presenter in here
      //
      {
    @visibleForTesting ProfileState? state,
  }) : super(state ?? ProfileState.initial());
}
