import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_routes/product/navigator/app_router.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [UserFullRoute(), SettingsRoute()],
      builder: (context, child, tabController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: context.tabsRouter.activeIndex,
              onTap: context.tabsRouter.setActiveIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: UserRoute.name),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: SettingsRoute.name),
              ]),
        );
      },
    );
  }
}
