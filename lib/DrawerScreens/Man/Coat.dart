import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManCoat extends StatefulWidget {
  @override
  _MansPageCoatState createState() => _MansPageCoatState();
}

class _MansPageCoatState extends State<ManCoat> {
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
          child: Text("Erkek Mont Kategorisi"),
        ),
      ),
    );
  }
}

