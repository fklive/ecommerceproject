import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class SkinMakeup extends StatefulWidget {
  @override
  _CostmeticAndPersonelCareSkinMakeupState createState() => _CostmeticAndPersonelCareSkinMakeupState();
}

class _CostmeticAndPersonelCareSkinMakeupState extends State<SkinMakeup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.SkinMakeup),
      ),
      body: Container(
        child: Center(
          child: Text("Kozmetik & Kişisel Bakım Kategorisi"),
        ),
      ),
    );
  }
}
