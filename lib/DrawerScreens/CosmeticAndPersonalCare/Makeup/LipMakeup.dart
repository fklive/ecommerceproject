import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class LipMakeup extends StatefulWidget {
  @override
  _CostmeticAndPersonelCareLipMakeupState createState() => _CostmeticAndPersonelCareLipMakeupState();
}

class _CostmeticAndPersonelCareLipMakeupState extends State<LipMakeup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.LipMakeup),
      ),
      body: Container(
        child: Center(
          child: Text("Kozmetik & Kişisel Bakım Kategorisi"),
        ),
      ),
    );
  }
}
