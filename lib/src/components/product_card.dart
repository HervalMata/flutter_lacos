import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget{
  final String id;
  final String name;
  final String image;
  final double price;
  final String category;
  final double discount;
  final double reviews;
  
  ProductCard({
    this.id, this.name, this.image, this.category,
    this.price, this.discount, this.reviews});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}