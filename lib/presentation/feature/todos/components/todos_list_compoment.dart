import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/resources.dart';
import '../bloc/todos_presenter.dart';
import '../bloc/todos_state.dart';

class TodosList extends StatelessWidget {
  const TodosList({
    required this.presenter,
    Key? key,
  }) : super(key: key);

  final TodosPresenter presenter;

  @override
  Widget build(BuildContext context) => BlocBuilder<TodosPresenter, TodosState>(
        bloc: presenter,
        buildWhen: (previous, current) =>
            !listEquals(previous.todos, current.todos),
        builder: (context, state) => ListView.builder(
          itemCount: state.todos.length,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                    .withOpacity(1),
                borderRadius: BorderRadius.circular(30)),
            alignment: Alignment.center,
            child: Text(
              state.todos[index],
              style: AppTextStyles.s30bold,
            ),
          ),
        ),
      );
}
