import 'package:ecommerceproject/Products/MainPage_JackJones.dart';
import 'package:ecommerceproject/Products/MainPage_Mavi.dart';
import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:ecommerceproject/Widgets/DefaultAppBar.dart';
import 'package:ecommerceproject/Widgets/DrawerWidgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final String title;

  const HomePage(this.title) : assert(title != null);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: MyDrawer(),
      appBar: DefaultAppBar(title == "" ? Headers.Homepage_Message : title),
      body: new ListView(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                height: MediaQuery.of(context).size.height - 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: new AssetImage('images/ecommerceimages/jj25.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => JackJones()));
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                height: MediaQuery.of(context).size.height - 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: new AssetImage('images/ecommerceimages/mv30.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Mavi()));
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                height: MediaQuery.of(context).size.height - 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: new AssetImage('images/ecommerceimages/zara2.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                height: MediaQuery.of(context).size.height - 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: new AssetImage('images/ecommerceimages/puma25.jpg'),
                        fit: BoxFit.fill)),
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                height: MediaQuery.of(context).size.height - 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: new AssetImage('images/ecommerceimages/bershka70.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                height: MediaQuery.of(context).size.height - 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: new AssetImage('images/ecommerceimages/nike40.jpg'),
                        fit: BoxFit.fill)),
              ),
            ),
            onTap: () {},
          ),

        ],
      ),
    );
  }

}

/*
Scaffold(
      drawer: MyDrawer(),
      appBar: DefaultAppBar(title),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.hourglass_empty,size: 100,textDirection: TextDirection.ltr,),
              Text("Buralar şimdilik ıssız...",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
            ],
          ),
    ) ,
    );

 */