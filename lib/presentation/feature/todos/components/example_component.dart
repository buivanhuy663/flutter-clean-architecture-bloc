import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/todos_presenter.dart';
import '../bloc/todos_state.dart';

class ExampleComponent extends StatelessWidget {
  const ExampleComponent({
    required this.presenter,
    Key? key,
  }) : super(key: key);

  final TodosPresenter presenter;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TodosPresenter, 
      TodosState>(
        bloc: presenter,
        buildWhen: (previous, current) => false,
        builder: (context, state) => Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
        ),
      );
}
