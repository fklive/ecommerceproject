import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class Fondoten extends StatefulWidget {
  @override
  _CostmeticAndPersonelCareFondotenState createState() => _CostmeticAndPersonelCareFondotenState();
}

class _CostmeticAndPersonelCareFondotenState extends State<Fondoten> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Foundation),
      ),
      body: Container(
        child: Center(
          child: Text("Kozmetik & Kişisel Bakım Kategorisi"),
        ),
      ),
    );
  }
}
