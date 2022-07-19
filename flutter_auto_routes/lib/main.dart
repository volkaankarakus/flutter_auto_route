import 'package:flutter/material.dart';
import 'package:flutter_auto_routes/home/home_view.dart';
import 'package:flutter_auto_routes/product/navigator/app_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );

    return const MaterialApp(
      title: 'Material App',
      home: HomeView(),
    );
  }
}
