import 'package:flutter/material.dart';
import 'package:flutter_auto_routes/dashboard/dashboard_view.dart';
import 'package:flutter_auto_routes/dashboard/settings/settings_view.dart';
import 'package:flutter_auto_routes/dashboard/user/model/user_model.dart';
import 'package:flutter_auto_routes/dashboard/user/user_view.dart';
import '../../dashboard/user/user_detail_view.dart';
import 'package:flutter_auto_routes/home/home_detail_view.dart';
import 'package:flutter_auto_routes/home/home_view.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route', // sayfalarin sonuna konan
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, path: 'home'),
    AutoRoute(page: HomeDetailView, path: 'detail'),
    AutoRoute(page: DashboardView, initial: true, children: [
      AutoRoute(
          page: EmptyPageRouter,
          name: 'UserFullRoute',
          path: 'userFullRoute',
          children: [
            AutoRoute(initial: true, page: UserView, path: 'userView'),
            AutoRoute(page: UserDetailView, path: ':id'),
          ]),
      AutoRoute(page: SettingsView, path: 'settings'),
    ]),
  ],
)
class AppRouter extends _$AppRouter {}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({super.key});
}
