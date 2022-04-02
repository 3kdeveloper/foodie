class ProductModel {
  final int? id;
  final String? imagePath;
  final String? title;
  final String? description;
  final String? ingredients;
  final double? price;

  ProductModel({
    this.id,
    this.imagePath,
    this.title,
    this.description,
    this.ingredients,
    this.price,
  });
}

final List<ProductModel> productData = [
  ProductModel(
    id: 1,
    imagePath: 'assets/icons/hamburger.png',
    title: 'Hamburger',
    description:
        'A hamburger is an extremely popular sandwich consisting of one or more meat patties placed in a bun or a bread roll. The meat is usually accompanied by various ingredients such as tomato slices, onions, pickles, or lettuce, and numerous condiments such as mayonnaise, ketchup, or salsa.',
    ingredients: 'Bacon + pineapple + the BBQ sauce',
    price: 10,
  ),
  ProductModel(
    id: 2,
    imagePath: 'assets/icons/hamburger.png',
    title: 'Hamburger',
    description:
        'A hamburger is an extremely popular sandwich consisting of one or more meat patties placed in a bun or a bread roll. The meat is usually accompanied by various ingredients such as tomato slices, onions, pickles, or lettuce, and numerous condiments such as mayonnaise, ketchup, or salsa.',
    ingredients: 'Bacon + pineapple + the BBQ sauce',
    price: 15,
  ),
  ProductModel(
    id: 3,
    imagePath: 'assets/icons/hamburger.png',
    title: 'Hamburger',
    description:
        'A hamburger is an extremely popular sandwich consisting of one or more meat patties placed in a bun or a bread roll. The meat is usually accompanied by various ingredients such as tomato slices, onions, pickles, or lettuce, and numerous condiments such as mayonnaise, ketchup, or salsa.',
    ingredients: 'Bacon + pineapple + the BBQ sauce',
    price: 10,
  ),
  ProductModel(
    id: 4,
    imagePath: 'assets/icons/hamburger.png',
    title: 'Hamburger',
    description:
        'A hamburger is an extremely popular sandwich consisting of one or more meat patties placed in a bun or a bread roll. The meat is usually accompanied by various ingredients such as tomato slices, onions, pickles, or lettuce, and numerous condiments such as mayonnaise, ketchup, or salsa.',
    ingredients: 'Bacon + pineapple + the BBQ sauce',
    price: 20,
  ),
  ProductModel(
    id: 5,
    imagePath: 'assets/icons/hamburger.png',
    title: 'Hamburger',
    description:
        'A hamburger is an extremely popular sandwich consisting of one or more meat patties placed in a bun or a bread roll. The meat is usually accompanied by various ingredients such as tomato slices, onions, pickles, or lettuce, and numerous condiments such as mayonnaise, ketchup, or salsa.',
    ingredients: 'Bacon + pineapple + the BBQ sauce',
    price: 10,
  ),
  ProductModel(
    id: 6,
    imagePath: 'assets/icons/hamburger.png',
    title: 'Hamburger',
    description:
        'A hamburger is an extremely popular sandwich consisting of one or more meat patties placed in a bun or a bread roll. The meat is usually accompanied by various ingredients such as tomato slices, onions, pickles, or lettuce, and numerous condiments such as mayonnaise, ketchup, or salsa.',
    ingredients: 'Bacon + pineapple + the BBQ sauce',
    price: 5,
  ),
];
