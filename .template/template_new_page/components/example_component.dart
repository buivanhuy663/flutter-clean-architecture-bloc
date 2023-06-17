import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/_replace_snake_came_presenter.dart';
import '../bloc/_replace_snake_came_state.dart';

class ExampleComponent extends StatelessWidget {
  const ExampleComponent({
    required this.presenter,
    Key? key,
  }) : super(key: key);

  final ReplacePascalCamePresenter presenter;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ReplacePascalCamePresenter, 
      ReplacePascalCameState>(
        bloc: presenter,
        buildWhen: (previous, current) => false,
        builder: (context, state) => Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
        ),
      );
}
