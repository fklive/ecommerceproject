import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanUnderwear extends StatefulWidget {
  @override
  _WomansPageUnderwearState createState() => _WomansPageUnderwearState();
}

class _WomansPageUnderwearState extends State<WomanUnderwear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(MainCategoriesHeadersForDrawer.UnderWear),
      ),
      body: Container(
        child: Center(
          child: Text(" Yağmurluk Kategorisi"),
        ),
      ),
    );
  }
}

