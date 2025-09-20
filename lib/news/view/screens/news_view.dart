import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/news/view/widgets/news_item.dart';
import 'package:news/news/view/widgets/tab_bar_item.dart';
import 'package:news/shared/constants/apptheme.dart';
import 'package:news/sources/data/models/sources_model.dart';

class NewsView extends StatefulWidget {
  final String categoryId;
  const NewsView({super.key, required this.categoryId});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        children: [
          DefaultTabController(
            length: SourcesModel.sources.length,
            child: TabBar(
              tabs: SourcesModel.sources
                  .map(
                    (source) => TabBarItem(
                      isSelected:
                          _currentIndex == SourcesModel.sources.indexOf(source),
                      source: source,
                    ),
                  )
                  .toList(),
              dividerColor: Colors.transparent,
              isScrollable: true,
              labelPadding: const EdgeInsetsDirectional.only(
                end: 16,
                bottom: 4,
              ),
              indicatorColor: Apptheme.white,
              tabAlignment: TabAlignment.start,
              onTap: (index) {
                if (_currentIndex == index) return;
                _currentIndex = index;
                setState(() {});
              },
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) => NewsItem(),
              separatorBuilder: (_, index) => const SizedBox(height: 16),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
