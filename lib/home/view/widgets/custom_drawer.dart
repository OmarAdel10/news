import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/home/data/models/category_model.dart';
import 'package:news/home/data/models/language_model.dart';
import 'package:news/shared/constants/apptheme.dart';
import 'package:news/shared/constants/manager.dart';

class CustomDrawer extends StatelessWidget {
  final VoidCallback resetSelectedCategory;
  const CustomDrawer({super.key, required this.resetSelectedCategory});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final TextTheme textTheme = Theme.of(context).textTheme;

    final List<String> theme = ['Light', 'Dark'];
    String _currentTheme = 'Dark';

    final List<LanguageModel> language = [
      LanguageModel(name: 'Arabic', code: 'ar'),
      LanguageModel(name: 'English', code: 'en'),
    ];
    String _currentLanguageCode = 'en';

    return Drawer(
      width: size.width * 0.65,
      child: Column(
        children: [
          Container(
            color: Apptheme.white,
            width: double.infinity,
            height: size.height * 0.25,
            child: Center(
              child: Text(
                'News App',
                style: textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeightManager.fw700,
                  color: Apptheme.black,
                ),
              ),
            ),
          ),

          // Go To Home Button
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              onTap: () {
                resetSelectedCategory();
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  Icon(CupertinoIcons.home, color: Apptheme.white, size: 24),
                  const SizedBox(width: 16),
                  Text(
                    'Go To Home',
                    style: textTheme.titleLarge!.copyWith(
                      color: Apptheme.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Divider(endIndent: 16, indent: 16),

          // Theme
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // SvgPicture.asset(AssetsManager.themeIcon, width: 24,), // doesn't work for unknown reason
                Icon(
                  CupertinoIcons.brightness,
                  color: Apptheme.white,
                  size: 24,
                ),
                const SizedBox(width: 16),
                Text(
                  'Theme',
                  style: textTheme.titleLarge!.copyWith(color: Apptheme.white),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: BoxBorder.all(color: Apptheme.white),
              borderRadius: BorderRadius.circular(RadiusManager.r16),
              shape: BoxShape.rectangle,
            ),
            child: DropdownButton(
              value: _currentTheme,
              items: theme
                  .map(
                    (theme) =>
                        DropdownMenuItem(value: theme, child: Text(theme)),
                  )
                  .toList(),
              onChanged: (String? newVal) {
                log('Selected Theme: $newVal');
                if (_currentTheme == newVal) return;
                _currentTheme = newVal as String;
              },
              isExpanded: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              iconEnabledColor: Apptheme.white,
              iconSize: 24,
              style: textTheme.titleLarge!.copyWith(
                fontWeight: FontWeightManager.fw700,
              ),
              dropdownColor: Apptheme.black,
              borderRadius: BorderRadius.circular(RadiusManager.r16),
              underline: SizedBox(),
            ),
          ),

          const SizedBox(height: 16),

          const Divider(endIndent: 16, indent: 16),

          // Language
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // SvgPicture.asset(AssetsManager.themeIcon, width: 24,), // doesn't work for unknown reason
                Icon(CupertinoIcons.globe, color: Apptheme.white, size: 24),
                const SizedBox(width: 16),
                Text(
                  'Language',
                  style: textTheme.titleLarge!.copyWith(color: Apptheme.white),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: BoxBorder.all(color: Apptheme.white),
              borderRadius: BorderRadius.circular(RadiusManager.r16),
              shape: BoxShape.rectangle,
            ),
            child: DropdownButton(
              value: _currentLanguageCode,
              items: language
                  .map(
                    (language) => DropdownMenuItem(
                      value: language.code,
                      child: Text(language.name),
                    ),
                  )
                  .toList(),
              onChanged: (String? newVal) {
                log('Selected Language Code : $newVal');
                if (_currentLanguageCode == newVal) return;
                _currentLanguageCode = newVal as String;
              },
              isExpanded: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              iconEnabledColor: Apptheme.white,
              iconSize: 24,
              style: textTheme.titleLarge!.copyWith(
                fontWeight: FontWeightManager.fw700,
              ),
              dropdownColor: Apptheme.black,
              borderRadius: BorderRadius.circular(RadiusManager.r16),
              underline: SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
