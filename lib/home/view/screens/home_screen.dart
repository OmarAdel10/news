import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/news/view/screens/news_view.dart';
import 'package:news/home/view/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
        ],
      ),
      drawer: CustomDrawer(),
      body: NewsView(),
    );
  }
}
