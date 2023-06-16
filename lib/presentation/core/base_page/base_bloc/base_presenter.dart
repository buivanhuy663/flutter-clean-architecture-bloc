import 'package:flutter_bloc/flutter_bloc.dart';

///Every presenter needs to inherit from this class.
///
///Example:
///``` dart
///class SplashPresenter extends BasePresenter<SplashState> {
///   SplashPresenter({
///     @visibleForTesting SplashState? state,
///   }) : super(state ?? SplashState.initial());
///}
///```
abstract class BasePresenter<T> extends Cubit<T> {
  BasePresenter(super.initialState);

  final Set<Future> _futures = {};

  @Deprecated(
    'Do not call this method directly for processing. '
    'This is the internal method',
  )
  void addFuture(Future future) {
    _futures.add(future);
  }

  @Deprecated(
    'Do not call this method directly for processing. '
    'This is the internal method',
  )
  void removeFuture(Future future) {
    _futures.remove(future);
  }

  @Deprecated(
    'Do not call this method directly for processing. '
    'This is the internal method',
  )
  void clearAllFuture() {
    _futures.clear();
  }

  @Deprecated(
    'Do not call this method directly for processing. '
    'This is the internal method',
  )
  bool get futuresIsEmpty => _futures.isEmpty;
}
