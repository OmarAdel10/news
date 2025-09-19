import 'package:flutter/material.dart';
import 'package:news/home/view/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer());
  }
}
