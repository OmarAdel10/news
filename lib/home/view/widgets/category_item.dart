import 'package:flutter/material.dart';
import 'package:news/home/data/models/category_model.dart';
import 'package:news/shared/constants/manager.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(RadiusManager.r24),
      child: Image.asset(
        category.imageLight,
        height: MediaQuery.sizeOf(context).height * 0.25,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
