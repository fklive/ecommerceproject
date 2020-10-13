import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManUnderwear extends StatefulWidget {
  @override
  _MansPageUnderwearState createState() => _MansPageUnderwearState();
}

class _MansPageUnderwearState extends State<ManUnderwear> {
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
          child: Text("Erkek İç Giyim Kategorisi"),
        ),
      ),
    );
  }
}

