import 'package:flutter/foundation.dart';

import '../../../core/base_page/base_bloc/base_presenter.dart';
import 'todos_state.dart';

class TodosPresenter extends BasePresenter<TodosState> {
  TodosPresenter(
      //
      // TODO: define inject param of presenter in here
      //
      {
    @visibleForTesting TodosState? state,
  }) : super(state ?? TodosState.initial());
}
