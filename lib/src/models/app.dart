import 'package:flutter/material.dart';
import 'package:flutter_lacos/src/pages/tela_inicial.dart';
import 'package:flutter_lacos/src/tabs/tabs.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laços da Cris',
      theme: ThemeData(primaryColor: Colors.pinkAccent),
      home: Tabs(),
    );
  }
}