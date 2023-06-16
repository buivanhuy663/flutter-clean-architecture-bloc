import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import './bloc/profile_presenter.dart';
import '../../core/base_page/base_page.dart';
import '../../core/refresh_service/refresh_service.dart';
import '../../resources/resources.dart';
import '../todos/todos_page.dart';

@RoutePage()
class ProfilePage extends BasePage {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BasePageState<ProfilePage, ProfilePresenter> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
        backgroundColor: AppColors.value.background,
        title: Text(
          AppText.value.profile,
          style: AppTextStyles.s14w300,
        ),
        centerTitle: true,
      );

  @override
  Widget buildBody(BuildContext context) => Center(
        child: GestureDetector(
          onTap: _addTodoReload,
          child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              'Click To Add Refresh for todos Page',
            ),
          ),
        ),
      );

  @override
  bool get resizeToAvoidBottomInset => true;
}

extension _ProfilePageBehavior on _ProfilePageState {
  void _addTodoReload() {
    RefreshService.addPage(TodosPage);
  }
}
