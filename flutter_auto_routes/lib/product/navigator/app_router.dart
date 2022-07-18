import 'package:auto_route/annotations.dart';
import 'package:flutter_auto_routes/home/home_view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'View,Route',
    routes: <AutoRoute>[AutoRoute(page: HomeView)])
class AppRouter extends _$AppRouter {}
