import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManBag extends StatefulWidget {
  @override
  _ShoesAndBagsManBagState createState() => _ShoesAndBagsManBagState();
}

class _ShoesAndBagsManBagState extends State<ManBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.ManBag),
      ),
      body: Container(
        child: Center(
          child: Text("Erkek Çanta"),
        ),
      ),
    );
  }
}
