import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  var data;
  var txtSearch = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      child: TextFormField(
        controller: txtSearch,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 7.0),
          suffixIcon: Material(
            elevation: 2.0,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
               onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductsPage(txtSearch.text, "")
                ));
              }),
          ),
          //border: InputBorder.none,
          hintText: "Buscar Produtos"
        ),
      ),
    );
  }
}