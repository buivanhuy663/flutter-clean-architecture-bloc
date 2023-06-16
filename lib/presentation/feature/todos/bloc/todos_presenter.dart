import 'dart:math';

import 'package:flutter/foundation.dart';

import './todos_state.dart';
import '../../../core/base_page/base_bloc/base_presenter.dart';

class TodosPresenter extends BasePresenter<TodosState> {
  TodosPresenter({
    @visibleForTesting TodosState? state,
  }) : super(state ?? TodosState.initial());

  Future<void> initData() async {
    await Future.delayed(const Duration(seconds: 3));
    final todos = List.generate(
      50,
      (index) => 'Item ${Random().nextInt(10000)}',
    );
    emit(state.copyWith(todos: todos));
  }
}
