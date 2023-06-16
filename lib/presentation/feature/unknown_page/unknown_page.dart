import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/base_page/base_bloc/base_presenter.dart';
import '../../core/base_page/base_page.dart';

@RoutePage()
class UnknownPage extends BasePage {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  State<UnknownPage> createState() => _UnknownPageState();
}

class _UnknownPageState extends BasePageState<UnknownPage, BasePresenter> {
  @override
  Widget buildBody(BuildContext context) => const Center(
        child: Text(
          'Unknown Page',
        ),
      );
}
