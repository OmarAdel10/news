import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:news/home/data/models/category_model.dart';
import 'package:news/home/view/widgets/category_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'Good Morning\nHere is Some News For You',
            style: textTheme.headlineSmall,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) =>
                  CategoryItem(category: CategoryModel.categories[index]),
              separatorBuilder: (_, index) => const SizedBox(height: 16),
              itemCount: CategoryModel.categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
