import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class Eyeliner extends StatefulWidget {
  @override
  _CostmeticAndPersonelCareEyelinerState createState() => _CostmeticAndPersonelCareEyelinerState();
}

class _CostmeticAndPersonelCareEyelinerState extends State<Eyeliner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.Eyeliner),
      ),
      body: Container(
        child: Center(
          child: Text("Kozmetik & Kişisel Bakım Kategorisi"),
        ),
      ),
    );
  }
}
