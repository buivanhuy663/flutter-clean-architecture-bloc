import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import './router_path.dart';
import '../../injection/injector.dart';
import '../../presentation/feature/home/home_page.dart';
import '../../presentation/feature/splash/splash_page.dart';
import '../../presentation/feature/unknown_page/unknown_page.dart';
import '../feature/profile/profile_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RouterPathConstants.splash,
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: RouterPathConstants.home,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: RouterPathConstants.profile,
              page: UnknownRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: ProfileRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: RouterPathConstants.profile,
              page: UnknownRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: ProfileRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: '*',
              page: UnknownRoute.page,
            ),
          ],
        ),
      ];

  static BuildContext get context =>
      // ignore: force_null_safety
      injector.get<AppRouter>().navigatorKey.currentContext!;
}
