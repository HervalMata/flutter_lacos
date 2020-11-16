import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lacos/src/components/cart_card.dart';

class CartPage extends StatefulWidget{

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget> [
          CartCard(),
        ],
      ),
    );
  }
}