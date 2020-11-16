import 'package:flutter/material.dart';
import 'package:flutter_lacos/src/components/button.dart';
import 'package:flutter_lacos/src/pages/login_page.dart';

class RegisterPage extends StatefulWidget{

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _toggleVisibility = true;

  String _email;
  String _name;
  String _password;

  GlobalKey<FormState> _formKey = GlobalKey();

  Widget _emailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Email",
          hintStyle: TextStyle(
            color: Color(0XFFBDC2CB),
            fontSize: 18.0,
          ),
      ),
      onSaved: (String email){
        _email = email;
      },
      validator: (String email){
        String errorMessage;
        if(!email.contains("@")){
          errorMessage = "Seu email está incorreto";
        }
        if(email.isEmpty){
          errorMessage = "O campo email é requerido";
        }
        return errorMessage;
      },
    );
  }

  Widget _nameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Nome",
        hintStyle: TextStyle(
          color: Color(0XFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
      onSaved: (String name){
        _name = name.trim();
      },
      validator: (String name){
        String errorMessage;
        if(name.isEmpty){
          errorMessage = "O campo nome é requerido";
        }
        return errorMessage;
      },
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Senha",
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
      onSaved: (String password){
        _password = password.trim();
      },
      validator: (String password){
        String errorMessage;
        if(password.isEmpty){
          errorMessage = "O campo senha é requerido";
        }
        return errorMessage;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.grey.shade100,
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Image(
                        image: AssetImage("assets/images/cadastro.png"),
                        height: 120.0,
                        width: 120.0,
                    ),
                    SizedBox(height: 20.0,),
                    Card(
                      elevation: 5.0,
                      child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget> [
                              _nameTextField(),
                              SizedBox(height: 20.0,),
                              _emailTextField(),
                              SizedBox(height: 20.0,),
                              _passwordTextField(),
                            ],
                          ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Button(btnText: "Cadastrar",),
                    Divider(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text(
                          "Já possui cadastro?",
                          style: TextStyle(
                            color: Color(0xFFBDC2CB),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) => LoginPage()
                                )
                            );
                          },
                          child: Text(
                            "Logar?",
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
          ),
        )
    );
  }

  void onSubmit(Function authenticate){
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      print("Seu email: $_email, sua senha: $_password");
      authenticate(_email, _password);
    }
  }
}