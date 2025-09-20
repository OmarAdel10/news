import 'package:flutter/material.dart';
import 'package:news/sources/data/models/sources_model.dart';

class TabBarItem extends StatelessWidget {
  final bool isSelected;
  final SourcesModel source;
  const TabBarItem({super.key, required this.isSelected, required this.source});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Text(
      source.name,
      style: isSelected ? textTheme.titleMedium : textTheme.titleSmall,
    );
  }
}
