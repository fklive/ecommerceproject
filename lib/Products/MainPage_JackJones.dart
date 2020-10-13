import 'package:ecommerceproject/Products/Products_Mavi.dart';
import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:ecommerceproject/Widgets/DefaultAppBar.dart';
import 'package:flutter/material.dart';

import 'Products_JackJones.dart';

class JackJones extends StatefulWidget {
  @override
  _JackJonesState createState() => _JackJonesState();
}

class _JackJonesState extends State<JackJones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(Brands.JackJones),
      body: ListView(
        children: <Widget>[
          Container(height: MediaQuery.of(context).size.height,  child: ProductsJackJones()),
        ],
      ),
    );
  }
}
