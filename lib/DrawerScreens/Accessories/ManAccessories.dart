import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ManAccessories extends StatefulWidget {
  @override
  _AccessoriesManAccessoriesState createState() => _AccessoriesManAccessoriesState();
}

class _AccessoriesManAccessoriesState extends State<ManAccessories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.ManAccessories),
      ),
      body: Container(
        child: Center(
          child: Text("Erkek Aksesuar"),
        ),
      ),
    );
  }
}
