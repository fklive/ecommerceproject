import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanBag extends StatefulWidget {
  @override
  _ShoesAndBagsWomanBagState createState() => _ShoesAndBagsWomanBagState();
}

class _ShoesAndBagsWomanBagState extends State<WomanBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.WomanBag),
      ),
      body: Container(
        child: Center(
          child: Text("Kadın Çanta"),
        ),
      ),
    );
  }
}
