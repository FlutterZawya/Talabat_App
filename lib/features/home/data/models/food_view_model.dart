import '../../../../core/utils/styles/app_images.dart';

class FoodViewModel {
  final String image, name, location;

  FoodViewModel({
    required this.image,
    required this.name,
    required this.location,
  });
}

List<FoodViewModel> offers = [
  FoodViewModel(
    image: AppImages.imagesSuperSaver2,
    name: "Super Saver",
    location: '',
  ),
  FoodViewModel(
    image: AppImages.imagesBestSeller2,
    name: "Best Seller",
    location: '',
  ),
  FoodViewModel(
    image: AppImages.imagesTalabatBro,
    name: "Talabat Bro",
    location: '',
  ),
  FoodViewModel(
    image: AppImages.imagesMustTry2,
    name: "Must-Tries",
    location: '',
  ),
];

