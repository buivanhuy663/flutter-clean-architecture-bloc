// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodosState {
  List<String> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodosStateCopyWith<TodosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res, TodosState>;
  @useResult
  $Res call({List<String> todos});
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res, $Val extends TodosState>
    implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodosStateCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$$_TodosStateCopyWith(
          _$_TodosState value, $Res Function(_$_TodosState) then) =
      __$$_TodosStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> todos});
}

/// @nodoc
class __$$_TodosStateCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$_TodosState>
    implements _$$_TodosStateCopyWith<$Res> {
  __$$_TodosStateCopyWithImpl(
      _$_TodosState _value, $Res Function(_$_TodosState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$_TodosState(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_TodosState extends _TodosState {
  _$_TodosState({required final List<String> todos})
      : _todos = todos,
        super._();

  final List<String> _todos;
  @override
  List<String> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosState(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodosState &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodosStateCopyWith<_$_TodosState> get copyWith =>
      __$$_TodosStateCopyWithImpl<_$_TodosState>(this, _$identity);
}

abstract class _TodosState extends TodosState {
  factory _TodosState({required final List<String> todos}) = _$_TodosState;
  _TodosState._() : super._();

  @override
  List<String> get todos;
  @override
  @JsonKey(ignore: true)
  _$$_TodosStateCopyWith<_$_TodosState> get copyWith =>
      throw _privateConstructorUsedError;
}
