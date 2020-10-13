import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class ParfumesAndDeodorants extends StatefulWidget {
  @override
  _CostmeticAndPersonelCareParfumesAndDeodorantsState createState() => _CostmeticAndPersonelCareParfumesAndDeodorantsState();
}

class _CostmeticAndPersonelCareParfumesAndDeodorantsState extends State<ParfumesAndDeodorants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(MainCategoriesHeadersForDrawer.ParfumesAndDeodorants),
      ),
      body: Container(
        child: Center(
          child: Text("Kozmetik & Kişisel Bakım Kategorisi"),
        ),
      ),
    );
  }
}
