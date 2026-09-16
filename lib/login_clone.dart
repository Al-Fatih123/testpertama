import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Clone")),
      body: Column(
        children: [
          Text('Instagram', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black,),),
          Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 80,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Nama pengguna, email, atau nomor ponsel",

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 20,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Kata Sandi",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  // contentPadding: EdgeInsets.symmetric(
                  //   horizontal: 16,
                  //   vertical: 20,
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),

          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.only(
              left: 25,
              right: 25,
              top: 12,
            ),
            child: ElevatedButton(
              onPressed: () {},

              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0064E0),
                foregroundColor: Colors.white,
                elevation: 0,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
                    Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.only(
              left: 25,
              right: 25,
              top: 12,
            ),
            child: ElevatedButton(
              onPressed: () {
                debugPrint("Register pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0064E0),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Register",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}