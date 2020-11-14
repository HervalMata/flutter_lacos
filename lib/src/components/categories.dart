import 'package:flutter/material.dart';
import 'package:flutter_lacos/src/components/category_card.dart';
import 'package:flutter_lacos/src/models/categories_model.dart';

class Category extends StatelessWidget{
  final List<CategoriesModel> _categories = categories;

  static List<CategoriesModel> categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context, int index){
            return CategoryCard(
              name: _categories[index].name,
              image: _categories[index].image,
              totalProducts: _categories[index].totalProducts,
            );
          }
      ),
    );
  }
}