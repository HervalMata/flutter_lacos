import 'package:flutter/material.dart';
import 'package:flutter_lacos/src/components/categories.dart';
import 'package:flutter_lacos/src/components/headers.dart';
import 'package:flutter_lacos/src/components/search.dart';

class TelaInicial extends StatefulWidget{
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
        children: <Widget> [
          Headers(),
          Category(),
          Search(),
        ],
      ),
    );
  }
}