import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class MakeupAccessories extends StatefulWidget {
  @override
  _CostmeticAndPersonelCareMakeupAccessoriesState createState() => _CostmeticAndPersonelCareMakeupAccessoriesState();
}

class _CostmeticAndPersonelCareMakeupAccessoriesState extends State<MakeupAccessories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(DetailCategoriesHeadersForDrawer.MakeupAccessories),
      ),
      body: Container(
        child: Center(
          child: Text("Kozmetik & Kişisel Bakım Kategorisi"),
        ),
      ),
    );
  }
}
