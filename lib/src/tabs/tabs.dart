import 'package:flutter/material.dart';
import 'package:flutter_lacos/src/pages/cart_page.dart';
import 'package:flutter_lacos/src/pages/categories_page.dart';
import 'package:flutter_lacos/src/pages/products_page.dart';
import 'package:flutter_lacos/src/pages/tela_inicial.dart';

class Tabs extends StatefulWidget{

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int tabNow = 0;
  TelaInicial telaInicial;
  CartPage cartPage;
  ProductsPage productsPage;
  CategoriesPage categoriesPage;
  List<Widget> pages;
  Widget pageNow;

  @override
  void initState() {
    telaInicial = TelaInicial();
    cartPage = CartPage();
    productsPage = ProductsPage();
    categoriesPage = CategoriesPage();
    pages = [telaInicial, cartPage, productsPage, categoriesPage];
    pageNow = telaInicial;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              pageNow == 0 ? "Meu Aplicativo" : pageNow == 1 ? "Carrinho"
                  : pageNow == 2 ? "Produtos" : "Categorias",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
          ),
        )
    );
  }
}