import 'package:flutter/material.dart';

class Woman extends StatefulWidget {
  @override
  _WomanState createState() => _WomanState();
}

class _WomanState extends State<Woman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Kadın"),
      ),
      body: Container(
        child: Center(
          child: Text("Kadın Kategorisi"),
        ),
      ),
    );
  }
}
