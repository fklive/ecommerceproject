import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManShirt extends StatefulWidget {
  @override
  _MansPageShirtState createState() => _MansPageShirtState();
}

class _MansPageShirtState extends State<ManShirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Shirt),
      ),
      body: Container(
        child: Center(
          child: Text("Erkek Gömlek Kategorisi"),
        ),
      ),
    );
  }
}

