import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/resources.dart';
import '../bloc/home_page_presenter.dart';
import '../bloc/home_page_state.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    required this.presenter,
    required this.tabsRouter,
    Key? key,
  }) : super(key: key);

  final HomePagePresenter presenter;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<HomePagePresenter, HomePageState>(
        bloc: presenter,
        buildWhen: (previous, current) =>
            previous.isShowNavigatorBottom != current.isShowNavigatorBottom,
        builder: (context, state) => state.isShowNavigatorBottom
            ? BottomNavigationBar(
                backgroundColor: AppColors.value.background,
                unselectedItemColor: AppColors.value.textLighter,
                items: _getBottomNavigationBarItems(context),
                currentIndex: tabsRouter.activeIndex,
                selectedLabelStyle: AppTextStyles.s10bold,
                selectedItemColor: AppColors.value.primary,
                unselectedLabelStyle: AppTextStyles.s10bold,
                type: BottomNavigationBarType.fixed,
                onTap: tabsRouter.setActiveIndex,
              )
            : const SizedBox(),
      );

  List<BottomNavigationBarItem> _getBottomNavigationBarItems(
    BuildContext context,
  ) =>
      [
        BottomNavigationBarItem(
          icon: const Icon(Icons.list_alt),
          label: AppText.value.todos,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: AppText.value.profile,
        ),
      ];
}
