import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget{
  final String name;
  final int totalProducts;
  final String image;

  CategoryCard({this.name, this.image, this.totalProducts});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Card(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              children: <Widget> [
                Image(
                    image: AssetImage(image),
                    height: 65.0,
                    width: 65.0,
                ),
                SizedBox(width: 20.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0
                      ),
                    ),
                    Text(
                      "$totalProducts Produtos",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0
                      ),
                    )
                  ],
                )
              ],
            ),
        ),
      ),
    );
  }
  
}