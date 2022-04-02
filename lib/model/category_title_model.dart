class CategoryTileModel {
  final String imagePath;
  final String title;

  CategoryTileModel({
    required this.imagePath,
    required this.title,
  });
}

final List<CategoryTileModel> categoryTileData = [
  CategoryTileModel(
      imagePath: 'assets/icons/hamburger.png', title: 'Hamburger'),
  CategoryTileModel(
      imagePath: 'assets/icons/french_fries.png', title: 'French Fries'),
  CategoryTileModel(imagePath: 'assets/icons/hot_dog.png', title: 'Hot Dog'),
  CategoryTileModel(imagePath: 'assets/icons/nachos.png', title: 'Nachos'),
  CategoryTileModel(imagePath: 'assets/icons/pizza.png', title: 'Pizza'),
  CategoryTileModel(
      imagePath: 'assets/icons/quesadilla.png', title: 'Quesadilla'),
  CategoryTileModel(imagePath: 'assets/icons/sandwich.png', title: 'Sandwich'),
  CategoryTileModel(imagePath: 'assets/icons/taco.png', title: 'Taco'),
  CategoryTileModel(imagePath: 'assets/icons/wrap.png', title: 'Wrap'),
];
