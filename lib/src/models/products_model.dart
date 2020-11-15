class ProductsModel{
  final String id;
  final String name;
  final String image;
  final double price;
  final String category;
  final double discount;
  final double reviews;

  ProductsModel({
    this.id, this.name, this.image, this.category,
    this.price, this.discount, this.reviews});
}