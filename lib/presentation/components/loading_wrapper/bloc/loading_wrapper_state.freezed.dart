// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_wrapper_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadingWrapperState {
  bool get isShowLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingWrapperStateCopyWith<LoadingWrapperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingWrapperStateCopyWith<$Res> {
  factory $LoadingWrapperStateCopyWith(
          LoadingWrapperState value, $Res Function(LoadingWrapperState) then) =
      _$LoadingWrapperStateCopyWithImpl<$Res, LoadingWrapperState>;
  @useResult
  $Res call({bool isShowLoading});
}

/// @nodoc
class _$LoadingWrapperStateCopyWithImpl<$Res, $Val extends LoadingWrapperState>
    implements $LoadingWrapperStateCopyWith<$Res> {
  _$LoadingWrapperStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowLoading = null,
  }) {
    return _then(_value.copyWith(
      isShowLoading: null == isShowLoading
          ? _value.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadingWrapperStateCopyWith<$Res>
    implements $LoadingWrapperStateCopyWith<$Res> {
  factory _$$_LoadingWrapperStateCopyWith(_$_LoadingWrapperState value,
          $Res Function(_$_LoadingWrapperState) then) =
      __$$_LoadingWrapperStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isShowLoading});
}

/// @nodoc
class __$$_LoadingWrapperStateCopyWithImpl<$Res>
    extends _$LoadingWrapperStateCopyWithImpl<$Res, _$_LoadingWrapperState>
    implements _$$_LoadingWrapperStateCopyWith<$Res> {
  __$$_LoadingWrapperStateCopyWithImpl(_$_LoadingWrapperState _value,
      $Res Function(_$_LoadingWrapperState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowLoading = null,
  }) {
    return _then(_$_LoadingWrapperState(
      isShowLoading: null == isShowLoading
          ? _value.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadingWrapperState extends _LoadingWrapperState {
  _$_LoadingWrapperState({required this.isShowLoading}) : super._();

  @override
  final bool isShowLoading;

  @override
  String toString() {
    return 'LoadingWrapperState(isShowLoading: $isShowLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingWrapperState &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingWrapperStateCopyWith<_$_LoadingWrapperState> get copyWith =>
      __$$_LoadingWrapperStateCopyWithImpl<_$_LoadingWrapperState>(
          this, _$identity);
}

abstract class _LoadingWrapperState extends LoadingWrapperState {
  factory _LoadingWrapperState({required final bool isShowLoading}) =
      _$_LoadingWrapperState;
  _LoadingWrapperState._() : super._();

  @override
  bool get isShowLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingWrapperStateCopyWith<_$_LoadingWrapperState> get copyWith =>
      throw _privateConstructorUsedError;
}
