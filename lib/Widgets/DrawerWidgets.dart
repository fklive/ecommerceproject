import 'package:ecommerceproject/DrawerScreens/Accessories/ManAccessories.dart';
import 'package:ecommerceproject/DrawerScreens/Accessories/WomanAccessories.dart';
import 'package:ecommerceproject/DrawerScreens/CosmeticAndPersonalCare/HairCare.dart';
import 'package:ecommerceproject/DrawerScreens/CosmeticAndPersonalCare/Makeup/EyeMakeup.dart';
import 'package:ecommerceproject/DrawerScreens/CosmeticAndPersonalCare/Makeup/Eyeliner.dart';
import 'package:ecommerceproject/DrawerScreens/CosmeticAndPersonalCare/Makeup/Fondoten.dart';
import 'package:ecommerceproject/DrawerScreens/CosmeticAndPersonalCare/Makeup/LipMakeup.dart';
import 'package:ecommerceproject/DrawerScreens/CosmeticAndPersonalCare/Makeup/MakeupAccessories.dart';
import 'package:ecommerceproject/DrawerScreens/CosmeticAndPersonalCare/Makeup/SkinMakeup.dart';
import 'package:ecommerceproject/DrawerScreens/CosmeticAndPersonalCare/ParfumesAndDeodorants.dart';
import 'package:ecommerceproject/DrawerScreens/CosmeticAndPersonalCare/SkinCare.dart';
import 'package:ecommerceproject/DrawerScreens/Man/JeanJacket.dart';
import 'package:ecommerceproject/DrawerScreens/Man/Jeans.dart';
import 'package:ecommerceproject/DrawerScreens/Man/Coat.dart';
import 'package:ecommerceproject/DrawerScreens/Man/Parka.dart';
import 'package:ecommerceproject/DrawerScreens/Man/RainCoat.dart';
import 'package:ecommerceproject/DrawerScreens/Man/Underwear.dart';
import 'package:ecommerceproject/DrawerScreens/Man/Shirt.dart';
import 'package:ecommerceproject/DrawerScreens/Man/Sweater.dart';
import 'package:ecommerceproject/DrawerScreens/Man/Sweatshirt.dart';
import 'package:ecommerceproject/DrawerScreens/Man/Tshirt.dart';
import 'package:ecommerceproject/DrawerScreens/ShoesAndBags/KidBag.dart';
import 'package:ecommerceproject/DrawerScreens/ShoesAndBags/KidShoe.dart';
import 'package:ecommerceproject/DrawerScreens/ShoesAndBags/ManBag.dart';
import 'package:ecommerceproject/DrawerScreens/ShoesAndBags/ManShoe.dart';
import 'package:ecommerceproject/DrawerScreens/ShoesAndBags/WomanBag.dart';
import 'package:ecommerceproject/DrawerScreens/ShoesAndBags/WomanShoe.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/BlouseAndTunic.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/Coat.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/Dress.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/JacketAndVest.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/JeansAndPants.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/RainCoat.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/Shirt.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/Sweatshirt.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/Tshirt.dart';
import 'package:ecommerceproject/DrawerScreens/Woman/Underwear.dart';
import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
             Container(
              alignment: Alignment.center,
              color: Colors.deepPurple,
              child: Text("İyi Günler,",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
            ),

          new UserAccountsDrawerHeader(
            accountName: Text("Username"),
            accountEmail: Text("example123@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, size: 36, color: Colors.white,),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
          ),
          ExpansionTile(
            //--------------------------ERKEK------------------------------
            title: Text(MainCategoriesHeadersForDrawer.MansClothing),
            leading: Icon(MdiIcons.humanMale, size: 36,),
            trailing: Icon(MdiIcons.arrowBottomRight),
            children: <Widget>[
              ExpansionTile(
                title: Text(MainCategoriesHeadersForDrawer.Clothing),
                trailing: Icon(MdiIcons.arrowDown),
                children: <Widget>[
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Sweater),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ManSweater()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Sweatshirt),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ManSweatshirt()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.TShirt),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ManTShirt()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Shirt),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ManShirt()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.JeanJacket),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ManJeanJacket()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Jeans),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ManJeans()));
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(MainCategoriesHeadersForDrawer.OuterWear),
                trailing: Icon(MdiIcons.arrowDown),
                children: <Widget>[
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Coat),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ManCoat()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Parka),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ManParka()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.RainCoat),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ManRainCoat()));
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text(MainCategoriesHeadersForDrawer.UnderWear),
                trailing: Icon(MdiIcons.arrowRight),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ManUnderwear()));
                },
              ),
            ],
          ),
          ExpansionTile(
            //--------------------------KADIN------------------------------
            title: Text(MainCategoriesHeadersForDrawer.WomansClothing),
            leading: Icon(MdiIcons.humanFemale, size: 36,),
            trailing: Icon(MdiIcons.arrowBottomRight),
            children: <Widget>[
              ExpansionTile(
                title: Text(MainCategoriesHeadersForDrawer.Clothing),
                trailing: Icon(MdiIcons.arrowDown),
                children: <Widget>[
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Sweatshirt),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WomanSweatshirt()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.TShirt),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WomanTShirt()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Shirt),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WomanShirt()));
                    },
                  ),
                  ListTile(
                    title: Text(
                        DetailCategoriesHeadersForDrawer.BlouesAndTunic),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WomanBlouseAndTunic()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Jeans),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WomanJeansAndPants()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.JacketAndVest),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WomanJacketAndVest()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Dress),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WomanDress()));
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(MainCategoriesHeadersForDrawer.OuterWear),
                trailing: Icon(MdiIcons.arrowDown),
                children: <Widget>[
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Coat),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WomanCoat()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.RainCoat),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WomanRainCoat()));
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text(MainCategoriesHeadersForDrawer.UnderWear),
                trailing: Icon(MdiIcons.arrowRight),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => WomanUnderwear()));
                },
              ),
            ],
          ),
          ExpansionTile(
            //--------------------------KİŞİSEL BAKIM------------------------------
            title: Text(
                MainCategoriesHeadersForDrawer.CosmeticsAndPersonelCare),
            leading: Icon(MdiIcons.sprayBottle, size: 36,),
            trailing: Icon(MdiIcons.arrowBottomRight),
            children: <Widget>[
              ListTile(
                title: Text(
                    MainCategoriesHeadersForDrawer.ParfumesAndDeodorants),
                trailing: Icon(MdiIcons.arrowRight),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ParfumesAndDeodorants()));
                },
              ),
              ExpansionTile(
                title: Text(MainCategoriesHeadersForDrawer.Makeup),
                trailing: Icon(MdiIcons.arrowDown),
                children: <Widget>[
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.LipMakeup),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LipMakeup()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.EyeMakeup),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EyeMakeup()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.SkinMakeup),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SkinMakeup()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Eyeliner),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Eyeliner()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.Foundation),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Fondoten()));
                    },
                  ),

                  ListTile(
                    title: Text(
                        DetailCategoriesHeadersForDrawer.MakeupAccessories),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MakeupAccessories()));
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text(MainCategoriesHeadersForDrawer.SkinCare),
                trailing: Icon(MdiIcons.arrowRight),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SkinCare()));
                },
              ),
              ListTile(
                title: Text(MainCategoriesHeadersForDrawer.HairCare),
                trailing: Icon(MdiIcons.arrowRight),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HairCare()));
                },
              ),
            ],
          ),
          ExpansionTile(
            //--------------------------AYAKKABI & ÇANTA------------------------------
            title: Text(MainCategoriesHeadersForDrawer.ShoesAndBags),
            leading: Icon(MdiIcons.shoePrint, size: 36,),
            trailing: Icon(MdiIcons.arrowBottomRight),
            children: <Widget>[
              ExpansionTile(
                title: Text(MainCategoriesHeadersForDrawer.Shoes),
                trailing: Icon(MdiIcons.arrowDown),
                children: <Widget>[
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.ManShoe),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ManShoe()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.WomanShoe),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WomanShoe()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.KidShoe),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => KidShoe()));
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(MainCategoriesHeadersForDrawer.Bags),
                trailing: Icon(MdiIcons.arrowDown),
                children: <Widget>[
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.ManBag),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ManBag()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.WomanBag),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WomanBag()));
                    },
                  ),
                  ListTile(
                    title: Text(DetailCategoriesHeadersForDrawer.KidBag),
                    trailing: Icon(MdiIcons.arrowRight),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => KidBag()));
                    },
                  ),
                ],
              ),
            ],
          ),
          //--------------------------AKSESUARLAR BÖLÜMÜ --------------------------------
          ExpansionTile(
            title: Text(MainCategoriesHeadersForDrawer.Accessories),
            leading: Icon(MdiIcons.necklace, size: 36,),
            trailing: Icon(MdiIcons.arrowBottomRight),
            children: <Widget>[
              ListTile(
                title: Text(DetailCategoriesHeadersForDrawer.ManAccessories),
                trailing: Icon(MdiIcons.arrowRight),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ManAccessories()));
                },
              ),
              ListTile(
                title: Text(DetailCategoriesHeadersForDrawer.WomanAccessories),
                trailing: Icon(MdiIcons.arrowRight),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => WomanAccessories()));
                },
              ),

            ],
          ),

        ],
      ),
    );
  }
}
