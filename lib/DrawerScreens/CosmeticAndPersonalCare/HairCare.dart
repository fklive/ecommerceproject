import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class HairCare extends StatefulWidget {
  @override
  _CostmeticAndPersonelCareHairCareState createState() => _CostmeticAndPersonelCareHairCareState();
}

class _CostmeticAndPersonelCareHairCareState extends State<HairCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(MainCategoriesHeadersForDrawer.HairCare),
      ),
      body: Container(
        child: Center(
          child: Text("Kozmetik & Kişisel Bakım Kategorisi"),
        ),
      ),
    );
  }
}
