class ProductModel {
  String image;
  String name;
  int price;
  int rewiewCount;
  double reviwRating;
  bool cart = false;//is that in the cart

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.rewiewCount,
    required this.reviwRating,
  });

  @override
  String toString() {
    return 'ProductModel{image: $image, name: $name, price: $price, '
        'rewiewCount: $rewiewCount, reviwRating: $reviwRating}';
  }
}
