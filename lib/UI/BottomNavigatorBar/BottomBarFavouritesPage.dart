import 'package:ecommerceproject/Products/MainPage_JackJones.dart';
import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:ecommerceproject/Widgets/DefaultAppBar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class CategoriesPage extends StatelessWidget {
  final String title;

  const CategoriesPage(this.title) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title == "" ? Headers.MyFavorites : title),
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
                MdiIcons.heartBroken,
                size: 148,
                color: Colors.grey.shade400,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
                child: Text(
                  Headers.MyFavorites,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  Strings.NoFavouritesInYourFavouritePage,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              RaisedButton(
                color: Colors.deepPurple,
                child:Padding(padding: EdgeInsets.fromLTRB(20, 12, 20, 12),child: Text(Strings.ShowMeProducts,style: TextStyle(fontSize: 18),),) ,
                textColor: Colors.white,
                elevation: 10,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> JackJones()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

