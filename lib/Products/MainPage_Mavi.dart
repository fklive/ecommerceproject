import 'package:ecommerceproject/Products/Products_Mavi.dart';
import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:ecommerceproject/Widgets/DefaultAppBar.dart';
import 'package:flutter/material.dart';

class Mavi extends StatefulWidget {
  @override
  _MaviState createState() => _MaviState();
}

class _MaviState extends State<Mavi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(Brands.Mavi),
      body: ListView(
        children: <Widget>[
          Container(height: MediaQuery.of(context).size.height,  child: ProductsMavi()),
        ],
      ),
    );
  }
}
