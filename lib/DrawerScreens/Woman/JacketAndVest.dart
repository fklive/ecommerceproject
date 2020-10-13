import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanJacketAndVest extends StatefulWidget {
  @override
  _WomansPageJacketAndVestState createState() => _WomansPageJacketAndVestState();
}

class _WomansPageJacketAndVestState extends State<WomanJacketAndVest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.JacketAndVest),
      ),
      body: Container(
        child: Center(
          child: Text(" Kadın Mont & Kaban Kategorisi"),
        ),
      ),
    );
  }
}

