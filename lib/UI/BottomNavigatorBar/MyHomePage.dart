import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'BottomBarAccountPage.dart';
import 'BottomBarBasketPage.dart';
import 'BottomBarFavouritesPage.dart';
import 'BottomBarHomePage.dart';
import 'package:custom_navigator/custom_navigation.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _bottomNavBarItems,
        ),
      ),
      children: <Widget>[
        HomePage(Headers.Homepage_Message),
        CategoriesPage(Headers.Campaigns),
        MyBasketPage(Headers.MyBasket_Title),
        MyAccountPage(Headers.MyAccount_Title),
      ],
      onItemTap: (index) {},
    );
  }

  final _bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text(
          Headers.Homepage_Title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
    BottomNavigationBarItem(
        icon: Icon(MdiIcons.heart),
        title: Text(
          Headers.MyFavorites,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_basket),
        title: Text(
          Headers.MyBasket_Title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        title: Text(
          Headers.MyAccount_Title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
  ];
}
