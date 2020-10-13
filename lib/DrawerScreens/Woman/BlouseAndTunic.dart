import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class WomanBlouseAndTunic extends StatefulWidget {
  @override
  _WomansPageBlouseAndTunicState createState() => _WomansPageBlouseAndTunicState();
}

class _WomansPageBlouseAndTunicState extends State<WomanBlouseAndTunic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.BlouesAndTunic),
      ),
      body: Container(
        child: Center(
          child: Text(" Yağmurluk Kategorisi"),
        ),
      ),
    );
  }
}

