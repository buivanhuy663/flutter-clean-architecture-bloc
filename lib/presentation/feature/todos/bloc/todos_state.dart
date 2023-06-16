import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_state.freezed.dart';

@freezed
class TodosState with _$TodosState {
  factory TodosState({
    required List<String> todos,
  }) = _TodosState;

  const TodosState._();

  factory TodosState.initial() => TodosState(
        todos: [],
      );
}
