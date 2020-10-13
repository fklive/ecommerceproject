import 'package:ecommerceproject/Login.dart';
import 'package:flutter/material.dart';
import 'UI/BottomNavigatorBar/MyHomePage.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce App",
      debugShowCheckedModeBanner: false,
      color: Colors.grey[400],
     home: Login(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple[400],
        textSelectionColor: Colors.white,
      ),

     // home: MyHomePage()
    );
  }
}
