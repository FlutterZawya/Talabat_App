import '../../../../core/utils/styles/app_images.dart';
import '../models/empty_search_view_model.dart';

List<EmptySearchViewModel> emptySearchViewData = [
  //Food
  EmptySearchViewModel(
    title: 'Find Food stores',
    subtitle: "Search for food stores near you",
    image: AppImages.imagesEmptySearchHealth,
    buttonText: 'Search food',
  ),
  //Groceries
  EmptySearchViewModel(
    title: 'Shop for all daily essentials',
    subtitle: "From groceries and fresh products to household supplies.",
    image: AppImages.imagesEmptySearchGroceries,
    buttonText: 'Search groceries',
  ),
  //Health
  EmptySearchViewModel(
    title: 'Find health & wellness stores',
    subtitle: "From groceries and fresh products to household supplies.",
    image: AppImages.imagesEmptySearchHealth,
    buttonText: 'Search health & wellness',
  ),
  //Flowers
  EmptySearchViewModel(
    title: 'Find the perfect gift',
    subtitle: "Order beautiful flowers, bouquets, or plants for every occasion.",
    image: AppImages.imagesEmptySearchFlowers,
    buttonText: 'Search flowers',
  ),
  //More Shops
  EmptySearchViewModel(
    title: 'Explore far and wide',
    subtitle: "Search for a range of products at a variety of shops.",
    image: AppImages.imagesEmptySearchMoreShops,
    buttonText: 'Search more products',
  ),
];
