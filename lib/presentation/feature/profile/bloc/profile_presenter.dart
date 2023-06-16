import 'package:flutter/foundation.dart';

import './profile_state.dart';
import '../../../core/base_page/base_bloc/base_presenter.dart';

class ProfilePresenter extends BasePresenter<ProfileState> {
  ProfilePresenter({
    @visibleForTesting ProfileState? state,
  }) : super(state ?? ProfileState.initial());
}
