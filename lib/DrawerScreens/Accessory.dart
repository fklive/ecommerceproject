import 'package:flutter/material.dart';

class Accessory extends StatefulWidget {
  @override
  _AccessoryState createState() => _AccessoryState();
}

class _AccessoryState extends State<Accessory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Aksesuarlar"),
      ),
      body: Container(
        child: Center(
          child: Text("Aksesuar Kategorisi"),
        ),
      ),
    );
  }
}
