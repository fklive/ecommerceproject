import 'package:flutter/material.dart';

class ShoesAndBags extends StatefulWidget {
  @override
  _ShoesAndBagsState createState() => _ShoesAndBagsState();
}

class _ShoesAndBagsState extends State<ShoesAndBags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Ayakkabı & Çanta"),
      ),
      body: Container(
        child: Center(
          child: Text("Ayakkabı & Çanta Kategorisi"),
        ),
      ),
    );
  }
}
