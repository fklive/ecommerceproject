import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManSweater extends StatefulWidget {
  @override
  _MansPageSweaterState createState() => _MansPageSweaterState();
}

class _MansPageSweaterState extends State<ManSweater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Sweater),
      ),
      body: Container(
        child: Center(
          child: Text("Erkek Kazak Kategorisi"),
        ),
      ),
    );
  }
}

