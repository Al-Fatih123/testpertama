import 'package:flutter/material.dart';
import 'package:testpertama/Components/custom_textfield.dart';
import 'package:testpertama/Components/custom_button.dart';
class LoginClonePage extends StatelessWidget {
  final TextEditingController username;
  final TextEditingController password;
  final String statusLogin = "";
  const LoginClonePage({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          Text("Intragam", style: TextStyle(fontSize: 24, color: Colors.blue, fontStyle: FontStyle.italic)),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(controller: username, myHint: "Enter your username", obscureText: false)),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(controller: password, myHint: "Enter your password", obscureText: true)),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomButton(onPressed: () {
                String usernameText = username.text.toString();
                String passwordText = password.text.toString();
                if(usernameText == "admin" && passwordText == "admin"){
                  print("Login Success");
                } else {
                  print("Login Failed");
                } 
            }, text: "Login"),
          )
        ],
      ),
    );
  }
}