import 'package:freezed_annotation/freezed_annotation.dart';

part '_replace_snake_came_state.freezed.dart';

@freezed
class ReplacePascalCameState with 
_$ReplacePascalCameState {
  factory ReplacePascalCameState() = 
  _ReplacePascalCameState;

  const ReplacePascalCameState._();

  factory ReplacePascalCameState.initial() => 
  ReplacePascalCameState();
}
