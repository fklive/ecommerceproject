import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManTShirt extends StatefulWidget {
  @override
  _MansPageTShirtState createState() => _MansPageTShirtState();
}

class _MansPageTShirtState extends State<ManTShirt> {
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
          child: Text("Erkek T-Shirt Kategorisi"),
        ),
      ),
    );
  }
}

