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
            backgroundColor: Colors.pinkAccent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              tabNow == 0 ? "Home" : tabNow == 1 ? "Carrinho"
                  : tabNow == 2 ? "Produtos" : "Categorias",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
            actions: <Widget> [
              IconButton(
                  icon: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                  ),
                  onPressed: (){

                  }
              ),
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: (){

                  }
              ),
            ],
          ),
          resizeToAvoidBottomPadding: false,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabNow,
            onTap: (index) {
              setState(() {
                tabNow = index;
                pageNow = pages[index];
              });
            },
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem> [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                title: Text("Carrinho"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.photo_library,
                ),
                title: Text("Produtos"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                title: Text("Categorias"),
              ),
            ],
          ),
          body: pageNow,
        )
    );
  }
}