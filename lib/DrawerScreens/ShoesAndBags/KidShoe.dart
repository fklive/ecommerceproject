import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class KidShoe extends StatefulWidget {
  @override
  _ShoesAndBagsKidShoeState createState() => _ShoesAndBagsKidShoeState();
}

class _ShoesAndBagsKidShoeState extends State<KidShoe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.KidShoe),
      ),
      body: Container(
        child: Center(
          child: Text("Çocuk Ayakkabı"),
        ),
      ),
    );
  }
}
