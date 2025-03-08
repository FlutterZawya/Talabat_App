import 'package:talabat_app/core/utils/styles/app_images.dart';

class CategoryModel {
  final String categoryName, categoryImg, offers;
  final Function()? onTap;

  CategoryModel({
    required this.categoryName,
    required this.categoryImg,
    required this.offers,
    required this.onTap,
  });
}

// The first List =================================================
List<CategoryModel> categoryViews = [
  CategoryModel(
    categoryName: 'Food',
    categoryImg: AppImages.imagesFood,
    offers: 'Up to 50%',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Talabat Mart',
    categoryImg: AppImages.imagesTalabatMartHome,
    offers: '20 mins',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Groceries',
    categoryImg: AppImages.imagesGrocery,
    offers: '',
    onTap: () {},
  ),
];
// The second List =================================================
List<CategoryModel> categoryProducts = [
  CategoryModel(
    categoryName: 'Health &\nwellness',
    categoryImg: AppImages.imagesHealth,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Flowers',
    categoryImg: AppImages.imagesFlowers,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Coffee',
    categoryImg: AppImages.imagesCoffee,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'More shops',
    categoryImg: AppImages.imagesMoreShops,
    offers: '',
    onTap: () {},
  ),
];
// The third List ======================================================
List<CategoryModel> categoryShortCuts = [
  CategoryModel(
    categoryName: 'Past\nOrders',
    categoryImg: AppImages.imagesPastOrder,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Super\nSaver',
    categoryImg: AppImages.imagesSuperSaver,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Must-Tries',
    categoryImg: AppImages.imagesMustTry,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Give Back',
    categoryImg: AppImages.imagesGiveBack,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Best\nSeller',
    categoryImg: AppImages.imagesBestSeller,
    offers: '',
    onTap: () {},
  ),
];
// The fourth List =========================================================
List<CategoryModel> categoryRestaurants = [
  CategoryModel(
    categoryName: 'Allo Beirut ',
    categoryImg: AppImages.imagesAlloBeirut,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Laffah',
    categoryImg: AppImages.imagesLaffah,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Falafil Al\nRabiah Al kha...',
    categoryImg: AppImages.imagesFalafel,
    offers: '',
    onTap: () {},
  ),
  CategoryModel(
    categoryName: 'Barbar',
    categoryImg: AppImages.imagesBarbar,
    offers: '',
    onTap: () {},
  ),
];
