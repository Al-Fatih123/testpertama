import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:testpertama/login_page.dart';
// import 'package:testpertama/kalkulator_page.dart';
// import 'package:testpertama/login_clone.dart';
// import 'package:testpertama/Pages/Login_Clone_Pages.dart';
import 'package:testpertama/Pages/Kalkulator_Page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: KalkulatorPage());
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //   ),
    //   // home: LoginPage(),
    //   // home: Kalkulatorpage(),
    //   // home: LoginClone(),
    //   // home: LoginClonePage(
    //   //   username: TextEditingController(),
    //   //   password: TextEditingController(),
    //   // )
    //   home: KalkulatorPage(),

    // );
    
  }
}
