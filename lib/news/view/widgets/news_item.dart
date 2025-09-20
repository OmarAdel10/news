import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:news/shared/constants/apptheme.dart';
import 'package:news/shared/constants/manager.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final DateTime dateTime = DateTime.now().subtract(Duration(minutes: 16));

    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.36,
      decoration: BoxDecoration(
        border: Border.all(color: Apptheme.white),
        borderRadius: BorderRadius.circular(RadiusManager.r16),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(RadiusManager.r8),
            child: Image.asset(
              AssetsManager.mockupNewsImage,
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.25,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          AutoSizeText(
            '40-year-old man falls 200 feet to his death while canyoneering at national park',
            style: textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              AutoSizeText('By : Jon Haworth', style: textTheme.labelMedium),
              const Spacer(),
              AutoSizeText(timeago.format(dateTime), style: textTheme.labelMedium),
            ],
          ),
        ],
      ),
    );
  }
}
