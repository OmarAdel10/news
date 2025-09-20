import 'package:news/shared/constants/api_constants.dart';
import 'package:news/shared/constants/manager.dart';

class CategoryModel {
  final String id;
  final String name;
  final String imageLight;
  final String imageDark;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.imageLight,
    required this.imageDark,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      id: CategoriesIds.generalId,
      name: 'General',
      imageLight: AssetsManager.generalLight,
      imageDark: AssetsManager.generalDark ,
    ),
    CategoryModel(
      id: CategoriesIds.businessId,
      name: 'Business',
      imageLight: AssetsManager.businessLight,
      imageDark: AssetsManager.businessDark,
    ),
    CategoryModel(
      id: CategoriesIds.entertainmentId,
      name: 'Entertainment',
      imageLight: AssetsManager.entertainmentLight,
      imageDark: AssetsManager.entertainmentDark,
    ),
    CategoryModel(
      id: CategoriesIds.healthId,
      name: 'Health',
      imageLight: AssetsManager.healthLight,
      imageDark: AssetsManager.healthDark,
    ),
    CategoryModel(
      id: CategoriesIds.scienceId,
      name: 'Science',
      imageLight: AssetsManager.scienceLight,
      imageDark: AssetsManager.scienceDark,
    ),
    CategoryModel(
      id: CategoriesIds.technologyId,
      name: 'Technology',
      imageLight: AssetsManager.technologyLight,
      imageDark: AssetsManager.technologyDark,
    ),
    CategoryModel(
      id: CategoriesIds.sportsId,
      name: 'Sports',
      imageLight: AssetsManager.sportsLight,
      imageDark: AssetsManager.sportsDark,
    ),
  ];
}
