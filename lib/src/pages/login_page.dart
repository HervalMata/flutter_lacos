import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lacos/src/components/button.dart';

class LoginPage extends StatefulWidget{

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _toggleVisibility = true;

  Widget _emailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Digite seu Email",
        hintStyle: TextStyle(
          color: Color(0XFFBDC2CB),
          fontSize: 18.0,
        )
      ),
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Digite sua Senha",
          hintStyle: TextStyle(
            color: Color(0XFFBDC2CB),
            fontSize: 18.0,
          ),
        suffixIcon: IconButton(
            icon: _toggleVisibility
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: (){
              setState(() {
                _toggleVisibility = !_toggleVisibility;
              });
            }
        )
      ),
      obscureText: _toggleVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image(
                image: AssetImage("assets/images/login.gif"),
                height: 140.0,
                width: 140.0,
            ),
            SizedBox(height: 15.0,),
            SizedBox(height: 20.0,),
            Card(
              elevation: 5.0,
              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget> [
                      _emailTextField(),
                      SizedBox(height: 20.0,),
                      _passwordTextField(),
                    ],
                  ),
              ),
            ),
            SizedBox(height: 30.0,),
            Button(btnText: "Logar"),
            Divider(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}