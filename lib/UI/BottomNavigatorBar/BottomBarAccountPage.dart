import 'package:ecommerceproject/Database/Authorized.dart';
import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'BottomBarFavouritesPage.dart';

class MyAccountPage extends StatelessWidget {
  final String title;

  const MyAccountPage(this.title) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(title),
        ),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: <Widget>[
              Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.shopping_cart,
                          size: 32,
                        ),
                        title: Text(
                          Headers.MyOrders,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.info,
                          size: 32,
                        ),
                        title: Text(
                          Headers.MyAccount_Info,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.favorite,
                          size: 32,
                        ),
                        title: Text(
                          Headers.MyFavorites,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoriesPage("")));
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          MdiIcons.gift,
                          size: 32,
                        ),
                        title: Text(
                          Headers.MyGiftCoupons,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(
                          MdiIcons.cog,
                          size: 32,
                        ),
                        title: Text(
                          Headers.Settings,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.help,
                          size: 32,
                        ),
                        title: Text(
                          Headers.Help,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(
                          MdiIcons.exitToApp,
                          size: 32,
                        ),
                        title: Text("Çıkış Yap"),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Çıkış Yap",
                                    textAlign: TextAlign.center,
                                  ),
                                  content: Text(
                                    "Uygulamadan çıkmak istediğinize emin misiniz?",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  actions: <Widget>[
                                    new FlatButton(
                                        onPressed: () {
                                          Authorized authorized = Authorized();
                                          authorized.handleSignOut(context);
                                        },
                                        child: Text("Evet")),
                                    new FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Hayır"),
                                      color: Colors.deepPurple,
                                    ),
                                  ],
                                );
                              });
                        },
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
