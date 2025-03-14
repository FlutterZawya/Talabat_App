import 'package:talabat_app/core/utils/styles/app_images.dart';

class MealModel {
  final String image, name, description;
  final num rate;

  MealModel({
    required this.image,
    required this.name,
    required this.description,
    required this.rate,
  });
}

List<MealModel> meals = [
  MealModel(
    image: AppImages.imagesMeal1,
    name: 'Malak Al Tawouk',
    description: 'Lebanese, Shawarma',
    rate: 4.5,
  ),
  MealModel(
    image: AppImages.imagesMeal2,
    name: 'Malak Al Tawouk',
    description: 'Lebanese, Shawarma',
    rate: 4.5,
  ),
  MealModel(
    image: AppImages.imagesMeal3,
    name: 'Malak Al Tawouk',
    description: 'Lebanese, Shawarma',
    rate: 4.5,
  ),
];
