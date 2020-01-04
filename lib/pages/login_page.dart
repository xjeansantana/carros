import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 25
            ),
            decoration: InputDecoration(
                labelText: "Login",
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 25
                ),
                hintText: "Digite o login",
                hintStyle: TextStyle(
                    fontSize: 18
                )
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            obscureText: true,
            keyboardType: TextInputType.number,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 25
            ),
            decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 25
                ),
                hintText: "Digite a senha",
                hintStyle: TextStyle(
                    fontSize: 18
                )
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 46,
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
