import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanTShirt extends StatefulWidget {
  @override
  _WomansPageTShirtState createState() => _WomansPageTShirtState();
}

class _WomansPageTShirtState extends State<WomanTShirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.TShirt),
      ),
      body: Container(
        child: Center(
          child: Text(" Yağmurluk Kategorisi"),
        ),
      ),
    );
  }
}

