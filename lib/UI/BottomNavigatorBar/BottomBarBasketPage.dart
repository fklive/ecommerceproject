import 'package:ecommerceproject/UI/BottomNavigatorBar/BottomBarHomePage.dart';
import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyBasketPage extends StatelessWidget {
  final String title;

  const MyBasketPage(this.title) : assert(title != null);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
          title: Center(child: Text(title)),),
      body:Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Icon(
                  MdiIcons.cart,
                  size: 148,
                  color: Colors.grey.shade400,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
                  child: Text(
                    Headers.MyBasket_Title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    Strings.NoProductInYourBasket,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                RaisedButton(
                  color: Colors.deepPurple,
                  child:Padding(padding: EdgeInsets.fromLTRB(20, 12, 20, 12),child: Text(Strings.Continue_Shopping,style: TextStyle(fontSize: 18),),) ,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(Headers.Campaigns_Product)));
                  },
                ),
              ],
            ),
          ),
    ),
    );
  }
}
