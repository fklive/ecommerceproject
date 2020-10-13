import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanCoat extends StatefulWidget {
  @override
  _WomansPageCoatState createState() => _WomansPageCoatState();
}

class _WomansPageCoatState extends State<WomanCoat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Coat),
      ),
      body: Container(
        child: Center(
          child: Text(" Kadın Mont & Kaban Kategorisi"),
        ),
      ),
    );
  }
}

