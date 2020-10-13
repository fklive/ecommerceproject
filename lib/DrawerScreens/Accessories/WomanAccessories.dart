import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanAccessories extends StatefulWidget {
  @override
  _AccessoriesWomanAccessoriesState createState() => _AccessoriesWomanAccessoriesState();
}

class _AccessoriesWomanAccessoriesState extends State<WomanAccessories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.WomanAccessories),
      ),
      body: Container(
        child: Center(
          child: Text("Kadın Aksesuar"),
        ),
      ),
    );
  }
}
