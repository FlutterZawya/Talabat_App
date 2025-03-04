
import '../utils/styles/app_images.dart';

class AuthOptionData {
  final String text;
  final String image;

  AuthOptionData({required this.text, required this.image});
}

List<AuthOptionData> authOptionData = [
  AuthOptionData(text: 'Continue With Google', image: AppImages.imagesGoogle),
  AuthOptionData(
      text: 'Continue With Facebook', image: AppImages.imagesFacebook),
  AuthOptionData(text: 'Continue With Email', image: AppImages.imagesEmail),
  AuthOptionData(text: 'Continue With Apple', image: AppImages.imagesApple)
];
