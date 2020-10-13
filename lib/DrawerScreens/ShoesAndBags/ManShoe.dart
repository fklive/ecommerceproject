import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManShoe extends StatefulWidget {
  @override
  _ShoesAndBagsManShoeState createState() => _ShoesAndBagsManShoeState();
}

class _ShoesAndBagsManShoeState extends State<ManShoe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.ManShoe),
      ),
      body: Container(
        child: Center(
          child: Text("Erkek Ayakkabı"),
        ),
      ),
    );
  }
}
