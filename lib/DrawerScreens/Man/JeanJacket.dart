import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManJeanJacket extends StatefulWidget {
  @override
  _MansPageJeanJacketState createState() => _MansPageJeanJacketState();
}

class _MansPageJeanJacketState extends State<ManJeanJacket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.JeanJacket),
      ),
      body: Container(
        child: Center(
          child: Text("Erkek Kot Ceket Kategorisi"),
        ),
      ),
    );
  }
}

