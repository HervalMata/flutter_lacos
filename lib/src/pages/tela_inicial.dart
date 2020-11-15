import 'package:flutter/material.dart';
import 'package:flutter_lacos/src/components/categories.dart';
import 'package:flutter_lacos/src/components/headers.dart';
import 'package:flutter_lacos/src/components/search.dart';
import 'package:flutter_lacos/src/models/products_model.dart';

class TelaInicial extends StatefulWidget{
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  List<ProductsModel> _products = products;
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

  Widget _productsItens(){
    return Container()
  }
}