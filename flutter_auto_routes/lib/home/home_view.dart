import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_routes/home/home_detail_view.dart';
import 'package:flutter_auto_routes/product/navigator/app_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String _url = 'https://picsum.photos/200';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IconButton(
          onPressed: () {
            context.router.navigate(HomeDetailRoute(url: _url));
            // gittigi sayfadan geri gelmesin isteseydik
            //context.router.navigate(HomeDetailRoute(url: _url));
          },
          icon: Image.network(_url)),
    );
  }
}
