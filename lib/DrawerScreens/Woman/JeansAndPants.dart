import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanJeansAndPants extends StatefulWidget {
  @override
  _WomansPageJeansAndPantsState createState() => _WomansPageJeansAndPantsState();
}

class _WomansPageJeansAndPantsState extends State<WomanJeansAndPants> {
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
          child: Text(" Yağmurluk Kategorisi"),
        ),
      ),
    );
  }
}

