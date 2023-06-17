import 'package:flutter/foundation.dart';

import '_replace_snake_came_state.dart';

class ReplacePascalCamePresenter extends 
BasePresenter<ReplacePascalCameState> {
  ReplacePascalCamePresenter(
      //
      // TODO: define inject param of presenter in here
      //
      {
    @visibleForTesting ReplacePascalCameState? state,
  }) : super(state ?? ReplacePascalCameState.initial());
}
