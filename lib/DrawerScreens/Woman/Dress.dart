import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanDress extends StatefulWidget {
  @override
  _WomansPageDressState createState() => _WomansPageDressState();
}

class _WomansPageDressState extends State<WomanDress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Dress),
      ),
      body: Container(
        child: Center(
          child: Text(" Kadın Mont & Kaban Kategorisi"),
        ),
      ),
    );
  }
}

