import 'package:flutter_lacos/src/models/products_model.dart';

class Products{
  final String id;
  final String name;
  final String image;
  final double price;
  final String category;
  final double discount;
  final double reviews;

  Products({
    this.id, this.name, this.image, this.category,
    this.price, this.discount, this.reviews});
}

final products =[
  Products(
    id: "1",
    name: 'Laços nº1',
    image: "assets/images/01.jpg",
    category: "Laços",
    price: 25.00,
    discount: 3.00,
    reviews: 5.00,
  )
];