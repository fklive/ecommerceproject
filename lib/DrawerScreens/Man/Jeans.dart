import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManJeans extends StatefulWidget {
  @override
  _MansPageJeansState createState() => _MansPageJeansState();
}

class _MansPageJeansState extends State<ManJeans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Jeans),
      ),
      body: Container(
        child: Center(
          child: Text("Erkek Kot Pantolon Kategorisi"),
        ),
      ),
    );
  }
}

