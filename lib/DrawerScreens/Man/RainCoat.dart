import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManRainCoat extends StatefulWidget {
  @override
  _MansPageRainCoatState createState() => _MansPageRainCoatState();
}

class _MansPageRainCoatState extends State<ManRainCoat> {
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
          child: Text("Erkek Yağmurluk Kategorisi"),
        ),
      ),
    );
  }
}

