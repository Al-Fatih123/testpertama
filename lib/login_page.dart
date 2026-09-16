import 'package:flutter/material.dart';
import 'package:testpertama/Components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  String statusLogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page")),
      body: Column(
        children: [
          Text("Welcome to the Login Page"+statusLogin.toString(), style: TextStyle(fontSize: 24, color: Colors.blue, fontStyle: FontStyle.italic)),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(controller: txtusername, myHint: "Enter your username", obscureText: false)),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: txtpassword,
              decoration: InputDecoration(hint: Text("Enter your password")))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                  String username = txtusername.text.toString();
                  String password = txtpassword.text.toString();
                  if(username == "admin" && password == "admin"){
                    statusLogin = "Login Success";
                  } else {
                    statusLogin = "Login Failed";
                  }
                });
              }, child: const Text("Login")),
              
            ],
          )
        ],
      ),
    );
  }
} 