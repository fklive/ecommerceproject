import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanRainCoat extends StatefulWidget {
  @override
  _WomansPageRainCoatState createState() => _WomansPageRainCoatState();
}

class _WomansPageRainCoatState extends State<WomanRainCoat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.RainCoat),
      ),
      body: Container(
        child: Center(
          child: Text(" Yağmurluk Kategorisi"),
        ),
      ),
    );
  }
}

