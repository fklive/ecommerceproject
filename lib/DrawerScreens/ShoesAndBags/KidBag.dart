import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class KidBag extends StatefulWidget {
  @override
  _ShoesAndBagsKidBagState createState() => _ShoesAndBagsKidBagState();
}

class _ShoesAndBagsKidBagState extends State<KidBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.KidBag),
      ),
      body: Container(
        child: Center(
          child: Text("Çocuk Çanta"),
        ),
      ),
    );
  }
}
