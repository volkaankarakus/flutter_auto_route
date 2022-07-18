import 'package:flutter/material.dart';

class HomeDetailView extends StatefulWidget {
  final String url;
  HomeDetailView({required this.url});

  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.url),
      ),
    );
  }
}
