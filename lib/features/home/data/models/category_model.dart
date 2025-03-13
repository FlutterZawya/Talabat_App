import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_app/core/utils/routes/app_routes.dart';
import 'package:talabat_app/core/utils/styles/app_images.dart';

class CategoryModel {
  final String categoryName, categoryImg, offers;
  final String location;

  CategoryModel({
    required this.categoryName,
    required this.categoryImg,
    required this.offers,
    required this.location,
  });
}

// The first List =================================================
List<CategoryModel> categoryViews = [
  CategoryModel(
    categoryName: 'Food',
    categoryImg: AppImages.imagesFood,
    offers: 'Up to 50%',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Talabat Mart',
    categoryImg: AppImages.imagesTalabatMartHome,
    offers: '20 mins',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Groceries',
    categoryImg: AppImages.imagesGrocery,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
];
// The second List =================================================
List<CategoryModel> categoryProducts = [
  CategoryModel(
    categoryName: 'Health &\nwellness',
    categoryImg: AppImages.imagesHealth,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Flowers',
    categoryImg: AppImages.imagesFlowers,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Coffee',
    categoryImg: AppImages.imagesCoffee,
    offers: '',
    location: '',
  ),
  CategoryModel(
    categoryName: 'More shops',
    categoryImg: AppImages.imagesMoreShops,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
];
// The third List ======================================================
List<CategoryModel> categoryShortCuts = [
  CategoryModel(
    categoryName: 'Past\nOrders',
    categoryImg: AppImages.imagesPastOrder,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Super\nSaver',
    categoryImg: AppImages.imagesSuperSaver,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Must-Tries',
    categoryImg: AppImages.imagesMustTry,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Give Back',
    categoryImg: AppImages.imagesGiveBack,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Best\nSeller',
    categoryImg: AppImages.imagesBestSeller,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
];
// The fourth List =========================================================
List<CategoryModel> categoryRestaurants = [
  CategoryModel(
    categoryName: 'Allo Beirut ',
    categoryImg: AppImages.imagesAlloBeirut,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Laffah',
    categoryImg: AppImages.imagesLaffah,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Falafil Al\nRabiah Al kha...',
    categoryImg: AppImages.imagesFalafel,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
  CategoryModel(
    categoryName: 'Barbar',
    categoryImg: AppImages.imagesBarbar,
    offers: '',
    location: AppRoutes.foodHomeView,
  ),
];
