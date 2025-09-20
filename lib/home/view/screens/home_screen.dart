import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/home/data/models/category_model.dart';
import 'package:news/home/view/screens/content/categories_view.dart';
import 'package:news/news/view/screens/news_view.dart';
import 'package:news/home/view/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryModel? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategory == null ? 'Home' : selectedCategory!.name),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
        ],
      ),
      drawer: CustomDrawer(resetSelectedCategory: resetSelectedCategory),
      body: selectedCategory == null
          ? CategoriesView(onSelectedCategory: onSelectedCategory)
          : NewsView(categoryId: selectedCategory!.id,),
    );
  }

  void onSelectedCategory(CategoryModel category) {
    selectedCategory = category;
    setState(() {});
  }

  void resetSelectedCategory() {
    if (selectedCategory == null) return;
    selectedCategory = null;
    setState(() {});
  }
}
