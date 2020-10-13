import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManSweatshirt extends StatefulWidget {
  @override
  _MansPageSweatshirtState createState() => _MansPageSweatshirtState();
}

class _MansPageSweatshirtState extends State<ManSweatshirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Sweatshirt),
      ),
      body: Container(
        child: Center(
          child: Text("Erkek Sweatshirt Kategorisi"),
        ),
      ),
    );
  }
}

