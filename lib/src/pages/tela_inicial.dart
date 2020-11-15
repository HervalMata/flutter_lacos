import 'package:flutter/material.dart';
import 'package:flutter_lacos/src/components/categories.dart';
import 'package:flutter_lacos/src/components/headers.dart';
import 'package:flutter_lacos/src/components/product_card.dart';
import 'package:flutter_lacos/src/components/search.dart';
import 'package:flutter_lacos/src/data/products_data.dart';

class TelaInicial extends StatefulWidget{
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  List<Products> _products = products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
        children: <Widget> [
          Headers(),
          Category(),
          Search(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Text(
                "Produtos Mais Vendidos",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("'Pressionou' preassed");
                },
                child: Text(
                  "Ver Todos",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            children: _products.map(_productsItens).toList(),
          )
        ],
      ),
    );
  }

  Widget _productsItens(Products products){
    return Container(
      margin: EdgeInsets.only(bottom: 26.0),
      child: ProductCard(
        id: products.id,
        name: products.name,
        image: products.image,
        category: products.category,
        price: products.price,
        discount: products.discount,
        reviews: products.reviews,
      ),
    );
  }
}