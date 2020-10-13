import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class SkinCare extends StatefulWidget {
  @override
  _CostmeticAndPersonelCareSkinCareState createState() => _CostmeticAndPersonelCareSkinCareState();
}

class _CostmeticAndPersonelCareSkinCareState extends State<SkinCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(MainCategoriesHeadersForDrawer.SkinCare),
      ),
      body: Container(
        child: Center(
          child: Text("Kozmetik & Kişisel Bakım Kategorisi"),
        ),
      ),
    );
  }
}
