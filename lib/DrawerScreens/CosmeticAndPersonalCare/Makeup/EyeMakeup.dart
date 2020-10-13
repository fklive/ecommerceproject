import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class EyeMakeup extends StatefulWidget {
  @override
  _CostmeticAndPersonelCareEyeMakeupState createState() => _CostmeticAndPersonelCareEyeMakeupState();
}

class _CostmeticAndPersonelCareEyeMakeupState extends State<EyeMakeup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.EyeMakeup),
      ),
      body: Container(
        child: Center(
          child: Text("Kozmetik & Kişisel Bakım Kategorisi"),
        ),
      ),
    );
  }
}
