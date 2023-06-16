import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/loading_wrapper_presenter.dart';
import './bloc/loading_wrapper_state.dart';
import '../progress_indicator_platform.dart';

class LoadingWrapper extends StatelessWidget {
  const LoadingWrapper({
    required this.presenter,
    this.child = const SizedBox(),
    Key? key,
  }) : super(key: key);

  final LoadingWrapperPresenter presenter;
  final Widget child;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<LoadingWrapperPresenter, LoadingWrapperState>(
        bloc: presenter,
        buildWhen: (previous, current) =>
            previous.isShowLoading != current.isShowLoading,
        builder: (context, state) => Stack(
          children: [
            child,
            if (state.isShowLoading)
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.transparent,
                child: const Center(
                  child: ProgressIndicatorPlatform(),
                ),
              )
          ],
        ),
      );
}
