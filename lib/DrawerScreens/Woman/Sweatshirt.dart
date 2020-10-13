import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanSweatshirt extends StatefulWidget {
  @override
  _WomansPageSweatshirtState createState() => _WomansPageSweatshirtState();
}

class _WomansPageSweatshirtState extends State<WomanSweatshirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Sweatshirt),
      ),
      body: Container(
        child: Center(
          child: Text(" Yağmurluk Kategorisi"),
        ),
      ),
    );
  }
}

