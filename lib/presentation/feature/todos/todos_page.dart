import 'package:flutter/material.dart';

import './bloc/todos_presenter.dart';
import './components/todos_list_compoment.dart';
import '../../../utilities/extensions/extensions.dart';
import '../../core/base_page/base_page.dart';
import '../../resources/resources.dart';

class TodosPage extends BasePage {
  const TodosPage({Key? key}) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends BasePageState<TodosPage, TodosPresenter> {
  @override
  void onStateCreated(BuildContext context) {
    super.onStateCreated(context);
    _initDataPage();
  }

  @override
  void onRefreshPage() {
    super.onRefreshPage();
    _initDataPage();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
        backgroundColor: AppColors.value.background,
        title: Text(
          AppText.value.todos,
          style: AppTextStyles.s14w300,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _onPressLogout,
            icon: Icon(
              Icons.logout,
              color: AppColors.value.blueMain,
            ),
          )
        ],
      );

  @override
  Widget buildBody(BuildContext context) => TodosList(
        presenter: presenter,
      );

  @override
  bool get resizeToAvoidBottomInset => true;
}

extension _TodosPageBehavior on _TodosPageState {
  void _initDataPage() {
    presenter.initData().subscribeLoadingFullScreen(this);
  }

  void _onPressLogout() {}
}
