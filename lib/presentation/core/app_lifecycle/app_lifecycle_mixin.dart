import 'dart:async';

import 'package:flutter/material.dart';

import './app_lifecycle.dart';
import '../../../injection/injector.dart';
import '../../../utilities/helpers/logger_helper/logger.dart';

mixin AppLifecycleMixin<T extends StatefulWidget> on State<T> {
  final appHelper = injector.get<AppLifecycle>();

  late StreamSubscription<AppLifecycleState> _appLifecycleState;

  @override
  void initState() {
    super.initState();

    _appLifecycleState = appHelper.appLifeCycleState.asBroadcastStream().listen(
      (state) {
        switch (state) {
          case AppLifecycleState.inactive:
            onInactive();
            break;
          case AppLifecycleState.paused:
            onPaused();
            break;
          case AppLifecycleState.resumed:
            onResumed();
            break;
          case AppLifecycleState.detached:
            onDetached();
            break;
        }
      },
    );
  }

  @override
  void dispose() {
    _appLifecycleState.cancel();
    super.dispose();
  }

  @mustCallSuper
  void onInactive() {
    LoggerHelper.info(
      '[Lifecycle][${widget.runtimeType}] onInactive',
    );
  }

  @mustCallSuper
  void onPaused() {
    LoggerHelper.info(
      '[Lifecycle][${widget.runtimeType}] onPaused',
    );
  }

  @mustCallSuper
  void onResumed() {
    LoggerHelper.info(
      '[Lifecycle][${widget.runtimeType}] onResumed',
    );
  }

  @mustCallSuper
  void onDetached() {
    LoggerHelper.info(
      '[Lifecycle][${widget.runtimeType}] onDetached',
    );
  }
}
