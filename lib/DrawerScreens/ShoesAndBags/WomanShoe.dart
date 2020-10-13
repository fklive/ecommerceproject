import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanShoe extends StatefulWidget {
  @override
  _ShoesAndBagsWomanShoeState createState() => _ShoesAndBagsWomanShoeState();
}

class _ShoesAndBagsWomanShoeState extends State<WomanShoe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.WomanShoe),
      ),
      body: Container(
        child: Center(
          child: Text("Kadın Ayakkabı"),
        ),
      ),
    );
  }
}
