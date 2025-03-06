class EmptySearchViewModel {
  final String title;
  final String subtitle;
  final String buttonText;
  final String image;
  final void Function()? onPressed;

  EmptySearchViewModel({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.buttonText,
    this.onPressed,
  });
}
