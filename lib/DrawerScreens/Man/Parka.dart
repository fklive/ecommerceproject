import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManParka extends StatefulWidget {
  @override
  _MansPageParkaState createState() => _MansPageParkaState();
}

class _MansPageParkaState extends State<ManParka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Parka),
      ),
      body: Container(
        child: Center(
          child: Text("Erkek Kaban & Parka Kategorisi"),
        ),
      ),
    );
  }
}

