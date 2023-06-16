import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_wrapper_state.freezed.dart';

@freezed
class LoadingWrapperState with _$LoadingWrapperState {
  factory LoadingWrapperState({
    required bool isShowLoading,
  }) = _LoadingWrapperState;

  const LoadingWrapperState._();

  factory LoadingWrapperState.initial() => LoadingWrapperState(
        isShowLoading: false,
      );
}
