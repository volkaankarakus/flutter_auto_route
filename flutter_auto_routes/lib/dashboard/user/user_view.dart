import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_routes/dashboard/user/model/user_model.dart';
import 'package:flutter_auto_routes/product/navigator/app_router.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () {
              context.router.navigate(UserDetailRoute(
                  model: UserModel(
                      imageUrl: 'https://picsum.photos/200',
                      avatarUrl: 'https://picsum.photos/200')));
            },
            child: Card(
              child: Image.network('https://picsum.photos/200'),
            ),
          );
        },
      ),
    );
  }
}
